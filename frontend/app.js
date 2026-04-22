const studentsList = document.getElementById("studentsList");
const studentForm = document.getElementById("studentForm");
const messageEl = document.getElementById("message");
const refreshBtn = document.getElementById("refreshBtn");

// Le frontend appelle le backend via Nginx proxy
const API_BASE = "/api";

async function fetchStudents() {
  messageEl.textContent = "";
  try {
    const response = await fetch(`${API_BASE}/students`);
    const data = await response.json();

    if (!response.ok) {
      throw new Error(data.error || "Erreur lors du chargement");
    }

    studentsList.innerHTML = "";

    if (!Array.isArray(data) || data.length === 0) {
      studentsList.innerHTML = "<li>Aucun étudiant trouvé.</li>";
      return;
    }

    data.forEach((student) => {
      const li = document.createElement("li");
      li.textContent = `${student.name} - ${student.email}`;
      studentsList.appendChild(li);
    });
  } catch (error) {
    studentsList.innerHTML = "";
    messageEl.textContent = `Erreur: ${error.message}`;
    messageEl.style.color = "red";
  }
}

studentForm.addEventListener("submit", async (event) => {
  event.preventDefault();
  messageEl.textContent = "";

  const name = document.getElementById("name").value.trim();
  const email = document.getElementById("email").value.trim();

  try {
    const response = await fetch(`${API_BASE}/students`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ name, email }),
    });

    const data = await response.json();

    if (!response.ok) {
      throw new Error(data.error || "Erreur lors de l'ajout");
    }

    messageEl.textContent = "Étudiant ajouté avec succès.";
    messageEl.style.color = "green";
    studentForm.reset();
    await fetchStudents();
  } catch (error) {
    messageEl.textContent = `Erreur: ${error.message}`;
    messageEl.style.color = "red";
  }
});

refreshBtn.addEventListener("click", fetchStudents);

fetchStudents();
