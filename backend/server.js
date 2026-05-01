require("dotenv").config();

const express = require("express");
const pool = require("./db");

const app = express();
const PORT = process.env.PORT || 5000;

app.use(express.json());

app.get("/health", async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT 1 AS status");
    res.status(200).json({
      message: "Backend is healthy tesst ci/cd amine",
      database: rows[0].status === 1 ? "connected" : "unknown"
    });
  } catch (error) {
    res.status(500).json({
      message: "Backend is running but database connection failed",
      error: error.message
    });
  }
});

app.get("/students", async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM students");
    res.status(200).json(rows);
  } catch (error) {
    res.status(500).json({
      message: "Failed to fetch students",
      error: error.message
    });
  }
});

app.post("/students", async (req, res) => {
  try {
    const { name, email } = req.body;

    if (!name || !email) {
      return res.status(400).json({
        message: "name and email are required"
      });
    }

    const [result] = await pool.query(
      "INSERT INTO students (name, email) VALUES (?, ?)",
      [name, email]
    );

    res.status(201).json({
      message: "Student created successfully",
      id: result.insertId,
      name,
      email
    });
  } catch (error) {
    res.status(500).json({
      message: "Failed to create student",
      error: error.message
    });
  }
});

app.listen(PORT, () => {
  console.log(`Backend server is running on port ${PORT}`);
});
