ls
vagrant ssh master1
ping master1
exit
ssh vagrant@10.10.0.11
ssh vagrant@10.10.0.21
ssh vagrant@10.10.0.22
ip a
ping -c 3 10.10.0.11
ping -c 3 10.10.0.21
ping -c 3 10.10.0.22
exit
ping -c 3 10.10.0.11
ping -c 3 10.10.0.21
ping -c 3 10.10.0.22
exit
ping -c 3 10.10.0.11
ping -c 3 10.10.0.21
ping -c 3 10.10.0.22
ssh vagrant@10.10.0.11
ssh vagrant@10.10.0.21
ssh vagrant@10.10.0.22
sudo apt update && sudo apt upgrade -y
ssh-keygen -t ed25519 -a 100 -C "tools-ansible"
ssh-copy-id -i ~/.ssh/id_ed25519.pub vagrant@10.10.0.11
ssh-copy-id -i ~/.ssh/id_ed25519.pub vagrant@10.10.0.21
ssh-copy-id -i ~/.ssh/id_ed25519.pub vagrant@10.10.0.22
ssh -i ~/.ssh/id_ed25519 vagrant@10.10.0.11
cat ~/.ssh/id_ed25519.pub
ssh -i ~/.ssh/id_ed25519 vagrant@10.10.0.11
ssh master1
sudo nano /etc/hosts
for h in master1 worker1 worker2; do   ssh -i ~/.ssh/id_ed25519 vagrant@$h "echo '
10.10.0.10 tools
10.10.0.11 master1
10.10.0.21 worker1
10.10.0.22 worker2' | sudo tee -a /etc/hosts"; done
ping -c 2 master1
ping -c 2 worker1
ping -c 2 worker2
ssh master1
sudo apt update
sudo apt install -y ansible
ansible --version
mkdir -p ~/ansible/{inventory,roles}
cd ~/ansible
touch site.yml inventory/inventory.ini
ls
nano inventory/inventory.ini
ansible all -i inventory/inventory.ini -m ping
cd roles/
ls
nano ~/ansible/roles/common/tasks/main.yml
clear
sudo nano ~/ansible/roles/common/tasks/main.yml
clear
cd
ls
cd ansible/
ls
cd roles/
ls
cd ~/ansible
ansible-galaxy init roles/common
cd roles/
ls
cd common/
ls
cd ..
cd..
cd ..
ls
nano common.yml
cd cd roles/
cd roles/
ls
cd common/
ls
cd t
cd tasks/
ls
nano main.yml
cd ..
ansible-playbook -i inventory/inventory.ini common.yml 
exit
ls
cd ansible/
ls
nano common.yml 
cd roles/
ls
cd common/
ls
cd tasks/
ls
nano  main.yml 
cd..
cd ..
ls
mkdir -p playbooks
mkdir -p playbooks/tests
ls
cd playbooks/
cd ..
cp common.yml playbooks/tests/00-common.yml
ls
cd playbooks/
ls
cd tests/
ls
nano 00-common.yml 
cd .
cd ..
ls
rm common.yml 7
rm common.yml 
ls
cd roles/
ls
ansible-galaxy init roles/containerd 
ls
cd roles/
ls
cd ..
ls
rm -rf roles
ansible-galaxy init containerd 
ls
cd containerd/
ls
cd tasks/
ls
nano main.yml 
cd ..
ls
cd handlers/
ls
nano main.yml 
cd 
cd ansible/
ls
cd playbooks/
ls
cd tests/
ls
nano 00-common.yml 
nano 01-containerd.yml
cd ..
cd .
.
cd ..
ls
cd inventory/
ls
cd ..
ansible-inventory --list
ansible-inventory -i inventory/inventory.ini --list
ansible-playbook -i inventory/inventory.ini playbooks/tests/01-containerd.yml 
cd playbooks/
cd tests/
ls
nano 01-containerd.yml 
cd ..
ls
cd roles/7
cd roles/
ls
cd ..
ls
cd playbooks/
ls
cd tests/
nano 01-containerd.yml 
cd ..
cd..
ls 
cd roles/
ls
cd containerd/
ls
cd roles
mv containered containerd
cd ..
ls
cd.
ls 
cd playbooks/
cd tests/
ls
nano 01-containerd.yml 
ansible-playbook -i inventory/inventory.ini playbooks/tests/01-containerd.yml
ls
nano 01-containerd.yml 
cd 
ansible-playbook -i inventory/inventory.ini playbooks/tests/01-containerd.yml
cd ansible/
ansible-playbook -i inventory/inventory.ini playbooks/tests/01-containerd.yml
cd ..
exit
ls
cd ansible/
ls
cd playbooks/
ls
cd tests/
ls
nano 01-containerd.yml 
cd ..
ls
cd roles/
ls
cd containerd/
ls
cd tasks/
ls
nano main.yml 
cd 
cd ansible/
cd playbooks/
cd tests/
ls
ansible-playbook -i inventory/inventory.ini 01-containerd.yml 
cd ..
cd..
cd 
ls
cd ansible/
ls
ansible-playbook -i inventory/inventory.ini playbooks/tests/01-containerd.yml 
cd playbooks/
cd tests/
nano 01-containerd.yml 
cd ..
cd.. 
cd ..
ansible-playbook -i inventory/inventory.ini playbooks/tests/01-containerd.yml
cd ~/ansible/roles
mv containerd containerd
cd ~/ansible
ls roles
cat playbooks/tests/01-containerd.yml
cd roles/
ls
cd ..
cd ~/ansible
rm -rf roles/containerd
cd roles
ansible-galaxy init container_runtime
cd ~/ansible
mv playbooks/tests/01-containered.yml playbooks/tests/01-runtime.yml
cd playbooks/
cd tests/
ls
rm 01-containerd.yml 
ls
nano 01-runtime.yml
cd ..
cd 
cd ansible/
cd roles/
ls
cd container_runtime/
ls
cd ta
cd tasks/
ls
nano main.yml 
cd ..
---
# Install containerd runtime for Kubernetes
- name: Install containerd package
- name: Ensure containerd config directory exists
- name: Generate default containerd configuration
- name: Write containerd configuration file
- name: Enable SystemdCgroup in containerd config
clear
ls
cd handlers/
ls
nano main.yml 
cd ..
cd 
cd an
cd ansible/
cd playbooks/
cd tests/
cd ..
ansible-playbook -i inventory/inventory.ini playbooks/tests/01-runtime.yml 
ls
nano site.yml 
find ~/ansible -maxdepth 3 -type d -name "container_runtime"
cat > /home/vagrant/ansible/playbooks/tests/01-runtime.yml <<'EOF'
- hosts: all
  become: yes
  roles:
    - container_runtime
EOF

cd ~/ansible
ansible-playbook -i inventory/inventory.ini playbooks/tests/01-runtime.yml
cd ~/ansible
find . -maxdepth 2 -name ansible.cfg -print
ansible-config dump | grep -E 'DEFAULT_ROLES_PATH|CONFIG_FILE'
ANSIBLE_ROLES_PATH=/home/vagrant/ansible/roles ansible-playbook -i inventory/inventory.ini playbooks/tests/01-runtime.yml
nano ~/ansible/ansible.cfg
cd ~/ansible
ansible-playbook playbooks/tests/01-runtime.yml
cd ~/ansible/roles
ansible-galaxy init kubernetes
ls
cd kubernetes/
ls
cd tasks/
nano main.yml 
nano ~/ansible/playbooks/tests/02-kubernetes.yml
cd 
cd ansible/
ansible-playbook playbooks/tests/02-kubernetes.yml 
cd ..
ssh master1
cd ansible/roles/kubernetes/tasks/
nano main.yml 
cd ...
cd ..
ansible-playbook playbooks/tests/02-kubernetes.yml
cd roles/
ls
ansible-galaxy init master
cd master/
ls
cd t
cd tasks/
ls
nano main.yml 
nano ~/ansible/playbooks/tests/03-master.yml
cd ..
ls
ansible-playbook 
ansible-playbook playbooks/tests/03-master.yml 
cd playbooks/tests
ls
nano 03
cd ..
ansible-playbook playbooks/tests/03-master.yml 
cd roles/master/tasks/
ls
nano main.yml 
ansible-playbook playbooks/tests/03-master.yml 
cd 
cd ansible/
ansible-playbook playbooks/tests/03-master.yml 
cd roles
ls
ansible-galaxy init workers
ls
cd workers/
cd t
ls
cd tasks
nano main.yml
cd ..
ls
cd ..
mkdir -p ~/ansible/group_vars
nano ~/ansible/group_vars/workers.yml
nano ~/ansible/playbooks/tests/04-workers.yml
cd ~/ansible
ansible-playbook playbooks/tests/04-workers.yml
ls
cd ansible/
ls
cd roles/
ls
cd workers/
ls
cd ..
rm workers
rmdir workers/
rm -r workers
ls
cd ..
ls
cd group_vars/
ls
cd ..
rm -r group_vars/
cd roles/
ls
ansible-galaxy init workers
cd workers/
ls
cd tasks/
ls
nano main.yml 
cd ..
ls playbooks/tests/
cd playbooks/tests/
nano 04-workers.yml 
cd ..
ansible-playbook playbooks/tests/04-workers.yml 
ping 10.10.0.11
ping 10.10.0.21
ping 10.10.0.22
ssh master1
ssh worker1
ssh worker2
ansible-playbook playbooks/tests/04-workers.yml 
cd roles/
ls
cd ma
cd master/
ls
cd tasks/
ls
nano main.yml
cd ..
ls
cd inventory/
ls
nano inventory.ini 
cd ..
cd roles/master/tasks/
ls
nano main.yml 
ssh master1
cd ...
cd
ssh master1
ssh worker1
ssh worker2
cd ansible/
ansible-playbook playbooks/tests/03-master.yml 
ssh master1
ansible-playbook playbooks/tests/04-workers.yml 
ssh master1
cd roles/
ansible-galaxy init flannel
cd flannel/
cd tasks/
nano main.yml
cd ..
cd playbooks/tests/
ls
nano 03
rm 03
ls
nano 05-flannel.yml
cd ..
ansible-playbook playbooks/tests/05-flannel.yml 
cd roles/
cd flannel/
ls
cd tasks/
lq
ls
nano main.yml 
ping 10.10.0.11
ssh master1
cd ..
ansible-playbook playbooks/tests/05-flannel.yml 
ssh master1 
ssh worker1
ssh worker2
cd roles/flannel/tasks/
nano main.yml 
cd 
cd ansible/
ansible-playbook playbooks/tests/05-flannel.yml 
ssh master1 
cd roles/flannel/tasks/
rm main.yml
nano main.yml
cd 
cd ansible/
ansible-playbook playbooks/tests/05-flannel.yml 
ssh master1 
ssh worker1
ssh worker2
ssh master1 
ssh worker2
ssh master1
exit
ssh master1
ssh worker1*
ssh worker1
ssh master1
cd ansible/
ls
cd roles/
ansible-galaxy init labels
cd labels/tasks/
nano main.yml 
cd ..
clear
cd playbooks/tests/
ls
nano 06-labels.yml
cd ..
ansible-playbook playbooks/tests/06-labels.yml 
ssh master1
ssh worker1
ssh master1
cd roles/
ansible-galaxy init ingress
cd ingress/tasks/
nano main.yml 
cd 
cd ansible/
cd playbooks/tests/
ls
nano 07-ingress.yml
cd ..
ansible-playbook playbooks/tests/07-ingress.yml 
ssh master1 
ansible-playbook playbooks/tests/07-ingress.yml 
cd roles/
cd ingress/
ls
cd tasks/
ls
rm main.yml
nano main.yml
cd 
cd ansible/
ansible-playbook playbooks/tests/07-ingress.yml 
cd roles/
cd tasks/
cd ingress/
cd tasks/
ls
rm main.yml
nano main.yml
cd
cd ansible/
ansible-playbook playbooks/tests/07-ingress.yml 
ssh master1 
exit
ls
cd ansible/
ls
cd roles/
ls
cd ingress/
ls
cd tasks/
ls
nano main.yml
cd ..
cd common/
mls
ls
cd tasks/
ls 
nano main.yml 
cd ..
ls
cd playbooks/
sls
ls
cd ..
ls
cd inventory/
ls
cd ..
nano site.yml 
ls
nano site.yml 
ansible-playbook -i inventory/inventory.ini site.yml
.
ls
cd inventory/
ls
nano inventory.ini 
cd ..
ls
cd roles/
ls
cd ..
ls
cd playbooks/
ls
cd tests/
ls
cd 
cd ansible/
ansible-playbook site.yml
ls
nano site.yml 
ansible-playbook site.yml
cd ..
ansible-playbook site.yml
vagrant ssh master1
ssh master1
ssh worker1
kubectl get nodes
ssh master1
ls
cd ansible/n
ls
cd an
cd ansible/
ls
cd playbooks/
ls
cd tests/
ls
nano 07-ingress.yml 
cd ..
ls
cd roles/
ls
cd ingress/
ls
cd tasks/
ls
nano main.yml 
ssh master1
cd ..
ls
ansible-galaxy init storage
ls
cd storage/
ls
mkdir files
ls
cd files/
ls
nano pv.yaml
nano pvc.yaml
cd ..
cd tasks/
ls*
ls
nano main.yml 
cd
cd ansible/
ls
cd playbooks/
ls
cd tests/
ls
nano 08-storage.yml
ansible-playbook 08-storage.yml 
cd ..
cd roles/
ls
cd ..
ansible-playbook playbooks/tests/08-storage.yml 
ls
cd roles/
ls
ansible-galaxy init mysql
ls
cd mysql/
ls
mkdir files
cd files/
nano deployment.yaml
nano service.yaml
cd ..
ls
cd tasks/
ls
nano main.yml
cd ..
cd playbooks/
ls
cd tests/
nano 09-mysql.yml
cd ..
ansible-playbook playbooks/tests/09-mysql.yml 
ssh master1
ssh worker2
ssh master1
ssh worker1
ssh master1
ansible-playbook playbooks/tests/09-mysql.yml 
ls 
cd playbooks/
cd ..
cd roles/
ls
cd mysql/
ls
cd t
cd tasks/
nano main.yml 
ssh master 1
ssh master1
sudo systemctl status nfs-kernel-server
cd. ..
cd ..
ls
ansible-galaxy init nfs
ls
cd nfs/
ls
cd tasks/
nano main.yml 
cd ..
ls
mkdir templates
cd te
cd templates/
nano exports.j2
cd ..
cd handlers/
ls
nano main.yml 
cd ..
;ls
ls
cd playbooks/
ls
cd tests/
ls
mv 09-mysql.yml 10-mysql.yml
ls
nano 09-nfs.yml
cd ..
ansible-playbook playbooks/tests/09-nfs.yml 
ls
cd inventory/
ls
nano inventory.ini 
cd ..
ansible-playbook playbooks/tests/09-nfs.yml 
cd inventory/
ls
nano inventory.ini 
cd ..
cd roles/
cd nfs/
ls
cd t
cd tasks/
ls
nano main.yml 
cd 
cd ansible/playbooks
ls
cd tests/
ls
nano 09-nfs.yml 
cd ..
ansible-playbook playbooks/tests/09-nfs.yml 
ansible-playbook playbooks/tests/10-mysql.yml 
ssh master1 
cat /etc/exports
sudo exportfs -rav
sudo systemctl restart nfs-kernel-server
sudo mkdir -p /srv/nfs/mysql
sudo chmod 777 /srv/nfs/mysql
ls -ld /srv/nfs/mysql
cd playbooks/tests/
ls
cd 
cd ansible/
ansible-playbook playbooks/tests/10-mysql.yml 
ssh master1
ssh worker2
ssh master1
ssh worker1
ssh master1
ansible-playbook playbooks/tests/10-mysql.yml 
cd playbooks/
cd tests/
ls
cd..
cd ..
ls
nano site.yml 
cd roles/
ls
cd common/
ls
cd ta
cd tasks/
ls
nano main.yml 
cd ...
cd ..
ls
cd container_runtime/
cd tasks/
nano main.yml 
cd ..
ls 
cd kubernetes/
cd t
cd tasks/
nano main.yml 
cd ..
ls
cd master/
cd tasks/
nano main.yml 
cd ..
cd workers/tasks/
nano main.yml 
cd .. 
cd ..
cd flannel/tasks/
nano main.yml 
cd ..
cd labels/tasks/
nano main.yml 
cd ..
cd ingress/tasks/
nano main.yml 
ls
cd ansible/
ls
ansible-playbook site.yml
ssh master1
ls
cd roles
ls
exit
ls
cd 
cd ansible/
l
stree
tree
apt install tree
sudo apt install tree
tree
cat ansible.cfg 
cat inventory/inventory.ini 
cat site.yml 
ls
cd roles/
ls
cd storage/tasks/
ls
nano main.yml 
cd ..
ls
cd files/
ls
cd ..
cd 
exit
sudo apt update
sudo apt install -y mysql-server
sudo systemctl enable mysql
sudo systemctl start mysql
mysql --version
mysql u root -p
clear
sudo systemctl status mysql
sudo mysql
npm start
nano package.json
npm start
rm -rf node_modules package-lock.json
npm install
npm start
node -v
npm -v
which node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
source ~/.bashrc
command -v nvm
nvm install 20
nvm use 20
nvm alias default 20
cd ~/backend
rm -rf node_modules package-lock.json
npm install
npm start
curl http://localhost:5000/health
npm start
exit
ls
cd ansible/
ls
nano site.yml
ansible-playbook 
ansible-playbook site.yml 
cd ..
mkdir backend
cd backend/
clear
npm init -y
sudo apt install npm
npm install express mysql2 dotenv
ls
cat package.json 
nano package.json 
touch db.js
nano db.js 
touch server.js
nano server.js 
touch init.sql
nano init.sql 
touch .env
nano .env 
which mysql
mysql -u root -p
docker --version
sudo apt update
sudo apt remove -y docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc || true
sudo apt install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable docker
sudo systemctl start docker
sudo docker run hello-world
sudo groupadd docker || true
sudo usermod -aG docker $USER
newgrp docker
docker ps
exit
ping worker2
ping worker1
clear
cd ansible/
ls
ansible-galaxy init roles/backend_image
ls
cd roles/
ls
touch roles/backend_image/tasks/main.yml
touch roles/backend_image/defaults/main.yml
touch roles/backend_image/tasks/prereqs.yml
touch roles/backend_image/tasks/build.yml
touch backend_image.yml
ls
rm backend_image.yml
ls
cd backend_image/
ls
cd defaults/
ls
nano main.yml 
pwd
ls
cd ~/backend
pwd
whoami
echo $HOME
ls /home/vagrant
ls /home/vagrant/backend
cd..
cd ..
cd ansible/
cd roles/
ls
cd backend_image/
ls
cd tasks/
nano main.yml 
ls
nano prereqs.uml
nano prereqs.yml
nano build.yml
cd ..
dc...
cd..
cd ..
cd playbooks/
ls
cd tests/
ls
nano 10-backend_image.yml
cd
cd ansible/
cd playbooks/
cd tests/
ansible-playbook 10-backend_image.yml 
ls
mv 10-backend_image.yml 11-backend_image.yml
nano 11-backend_image.yml 
cd ..
cd roles/
ls
cd ..
ansible-playbook playbooks/tests/11-backend_image.yml 
ansible-galaxy init roles/tools_prepare
cd roles/
ls
cd tools_prepare/
cd t
ls
cd tasks/
nano main.yml 
cd .
cd ..
cd defaults/
ls
nano main.yml 
cd ..
cd tasks/
ls
nano install_packages.yml
nano - name: Créer le répertoire des keyrings APT
- name: Télécharger la clé GPG Docker
- name: Ajouter le dépôt Docker
- name: Installer Docker
- name: Démarrer et activer Docker
- name: Ajouter vagrant au groupe docker
- name: Installer le SDK Docker Python
ls
nano install_docker.yml
nano install_node.yml
nano install_mysql.yml
nano verify.yml
cd ..
cd playbooks/
ls
nano 
cd tests/
ls
mv 11-backend_image.yml 12-backend_image.yml
ls
nano 11-tools_prepare.yml
cd ..
ansible-playbook playbooks/tests/11-tools_prepare.yml 
ls
cd ..
ls
cd backend/
ls
nano Dockerfile
nano .dockerignore
cd ..
cd ansible/
ansible-playbook playbooks/tests/12-backend_image.yml 
ls
cd roles/
ls
cd tools_prepare/
lq
ls
cd tasks/
ls
cd ..
ls
ansible-galaxy init nexus
ls
exiiit
exit
clear
cd ansible/roles/backend_image/
cd defaults/
nano main.yml
cd ..
cd tasks/
nano main.yml
nano prereqs.yml 
nano build.yml
nano push.yml
cd ..
cd playbooks/
ls
cd tests/
ls
cd ..
cd roles/
ls
ansible-galaxy init backend
ls
cd backend
ls
cd defaults/
ls
nano main.yml
cd ..
cd tasks/
nano main.yml
nano prereqs.yml
nano namespace.yml
cd  ..
ls
mkdir templates
nano namespace.yml.j2
rm namespace.yml.j2 
cd templates/
nano namespace.yml.j2
cd ..
cd tas
cd tasks/
nano config.yml
cd ..
cd templates/
nano configmap.yml.j2
nano secret.yml.j2
cd ..
cd tasks/
nano deploy.yml
nano verify.yml
cd ..
cd templates/
ls
nano service.yml.j2
ls
nano deployment.yml.j2
cd ..
cd playbooks/
cd tests/
ls
nano 14-backend.yml
cd ..
cd 
curl -I http://127.0.0.1:8081
curl -I http://10.10.0.10:8081
docker logs nexus --tail 100
cd ansible/roles/nexus/
ls
cd defaults/
nano main.yml 
docker rm -f nexus
docker rmi sonatype/nexus3:3.90.0
cd 
cd ansible/
ansible-playbook playbooks/tests/13-nexus.yml
docker logs nexus --tail 50
curl -I http://127.0.0.1:8081
docker logs nexus --tail 50
curl -I http://127.0.0.1:8081
ansible-playbook playbooks/tests/12-backend_image.yml 
cd ..
ls
cd backend/
ls
cd ..
which /nexus-data/admin.password
curl -I http://10.10.0.10:8082/v2/
cat /opt/nexus-data/admin.password
/opy
/opt
ls
cd opt
cd /opt/nexus
cd /opt/nexus-data/
ls
cd ..
ls
cd nexus-data/
ls
nano admin.password 
curl -I http://10.10.0.10:8082/v2/
cd ..
cd 
ansible
cd ansible/
ls
cd roles/
ls
cd backend-image
cd backend_image/
ls
cd defaults/
ls
nano main.yml
cd ..
ansible-p
ansible-playbook playbooks/tests/12-backend_image.yml 
curl -I http://10.10.0.10:8082/v2/
cd roles/
ls
cd nexus/
ls
cd defaults/
ls
nano main.yml
cd 
sudo nano /etc/docker/daemon.json
sudo systemctl restart docker
docker info | grep -A 5 "Insecure Registries"
exit
cd ansible/
ls
cd roles/
ls
ansible-galaxy init nexus
ls
cd nexus
ls
cd tasks/
cat main.txt
cat main.yml
cd ..
cd defaults/
ls
nano main.yml
cd ..
ls
cd tasks/
nano main.yml
nano install.yml
nano configure.yml
nano verify.yml
cd ..
cd playbooks/
ls
cd tests/
ls
nano 13-nexus.yml
cd ..
ansible-playbook playbooks/tests/13-nexus.yml 
docker logs nexus --tail 50
curl -I http://127.0.0.1:8081
docker logs nexus --tail 50
curl -I http://127.0.0.1:8081
cd ansible/
ls
nano site.yml
ansible-playbook site.yml
ansible-playbook -i inventory site.yml -vvv
ansible-playbook site.yml -vvv
ansible-playbook site.yml 
clear
cd roles/backend_image/defaults/
nano main.yml 
exit
cd ansible/roles/
ls
ansible-galaxy init necxus_proxy_tls
rm necxus_proxy_tls/
rm -rf necxus_proxy_tls/
ansible-galaxy init nexus_proxy_tls
cd nexus_proxy_tls/
cd defaults/
nano main.yml
cd ..
cd tasks/
nano main.yml 
nano install.yml
nano certs.yml
cd ..
mkdir templates
nano nexus-registry.conf.j2
cd tasks/
cd ..
mv nexus-registry.conf.j2 /templates
mv nexus-registry.conf.j2 /templates/nexus-registry.conf.j2
ls
cd ls
ls
rm -rf nexus-registry.conf.j2 
cd tasks/
ls
cd ..
cd templates/
ls
nano nexus-docker-proxy.conf.j2
cd .. 
cd tasks/
ls
nano configure.yml
nano verify.yml
cd 
cd ansible/playbooks/tests/
ls
nano 15-nexus_proxy_tls.yml
cd ..
ansible-playbook playbooks/tests/15-nexus_proxy_tls.yml 
cd ..
cd ansible/
ls
cd roles/
ls
cd nexus_proxy_tls/
ls
cd tasks/
ls
cat main.yml 
nano main.yml 
cd ..
cd
cd ansible/
ansible-playbook playbooks/tests/15-nexus_proxy_tls.yml 
cd roles/nexus_proxy_tls/defaults/
nano main.yml 
cd 
cd ansible/
ansible-playbook playbooks/tests/15-nexus_proxy_tls.yml 
cd roles/nexus_proxy_tls/defaults/
ls
nano main.yml 
cd ..
cd tasks/
nani install.yml 
nano install.yml 
cd ..
cd ansible/
cd ..
ansible-playbook playbooks/tests/15-nexus_proxy_tls.yml 
cd roles/nexus_proxy_tls/tasks/
nano certs.yml 
cd 
cd ansible/
ansible-playbook playbooks/tests/15-nexus_proxy_tls.yml 
cd roles/backend_image/
cd defaults/
nano main.yml
cd ..
cd tasks/
ls
nano push.yml 
cd ..
ansible-galaxy init registry_tls_trust
cd registry_tls_trust/
cd defaults/
nano main.yml 
cd ..
mkdir templates
cd templates/
nano hosts.toml.j2
cd ..
cd tasks/
nano configure.yml
nano main.yml 
cd ..cd 
cd ansible/playbooks/tests/
nano 16-regisrty_tls_trust.yml
cd ..
cd roles/backend
cd defaults/
nano main.yml
cd
cd ansible/
ansible-playbook playbooks/tests/16-regisrty_tls_trust.yml 
ansible-playbook playbooks/tests/16-regisrty_tls_trust.yml -vvv
ansible-playbook playbooks/tests/11-tools_prepare.yml 
ansible-playbook playbooks/tests/15
ansible-playbook playbooks/tests/15-nexus_proxy_tls.yml 
ansible-playbook playbooks/tests/12-backend_image.yml 
sudo rm -f /etc/nginx/ssl/nexus.crt
sudo rm -f /etc/nginx/ssl/nexus.key
sudo rm -f /etc/nginx/ssl/openssl-san.cnf
sudo rm -f /home/vagrant/nexus.crt
cd roles/nexus_proxy_tls/tasks/
nano certs.yml 
cd 
cd ansible/
ansible-playbook playbooks/tests/15-nexus_proxy_tls.yml 
ansible-playbook playbooks/tests/12-backend_image.yml 
curl -I http://127.0.0.1:8082/v2/
curl -k -I https://10.10.0.10:8443/v2/
echo 'admin123' | docker login 10.10.0.10:8443 -u admin --password-stdin
ansible-playbook playbooks/tests/12-backend_image.yml
ansible-playbook playbooks/tests/12-backend_image.yml -vvv
cd roles/backend_image/
ls
cd tasks/
ls
nano push.yml 
cd 
cd ansible/
ansible-playbook playbooks/tests/12-backend_image.yml -vvv
ansible-playbook playbooks/tests/14-backend.yml 
curl http://127.0.0.1:5000/health
ansible-playbook playbooks/tests/16-regisrty_tls_trust.yml 
ansible-playbook playbooks/tests/16-regisrty_tls_trust.yml -vvv
clear
ls -l /etc/nginx/ssl/nexus.crt
cd roles/registry_tls_trust/defaults/
nano main.yml 
cd ..
cd templates/
nano hosts.toml.j2 
cd ..
cd tasks/
nano main.yml 
cd
cd ansible/
ansible-playbook playbooks/tests/16-regisrty_tls_trust.yml 
curl http://127.0.0.1:5000/health
ssh worker2
ssh master1 
ssh master1
ansible worker2 -i inventory/inventory.ini -b -m shell -a 'ls -l /etc/containerd/certs.d/10.10.0.10:8443/ && echo "---" && cat /etc/containerd/certs.d/10.10.0.10:8443/hosts.toml'
ansible worker2 -i inventory/inventory.ini -b -m shell -a 'cp /etc/containerd/certs.d/10.10.0.10:8443/ca.crt /usr/local/share/ca-certificates/nexus.crt && update-ca-certificates'
ansible worker2 -i inventory/inventory.ini -b -m shell -a 'systemctl restart containerd && systemctl is-active containerd'
ansible worker2 -i inventory/inventory.ini -b -m shell -a 'curl -k -I https://10.10.0.10:8443/v2/'
ansible worker2 -i inventory/inventory.ini -b -m shell -a 'ctr --namespace k8s.io images pull --hosts-dir /etc/containerd/certs.d 10.10.0.10:8443/backend-students-app:1.0'
cd ansible/
ls
cat ansible.cfg 
cd inventory/
ls
nano
nano inventory.ini 
cd 
cd ansible/
ansible worker2 -i inventory/inventory.ini -m ping
ansible worker2 -i inventory/inventory.ini -b -m shell -a 'ls -l /etc/containerd/certs.d/10.10.0.10:8443/ && echo "---" && cat /etc/containerd/certs.d/10.10.0.10:8443/hosts.toml'
ansible worker2 -i inventory/inventory.ini -b -m shell -a 'cp /etc/containerd/certs.d/10.10.0.10:8443/ca.crt /usr/local/share/ca-certificates/nexus.crt && update-ca-certificates'
ansible worker2 -i inventory/inventory.ini -b -m shell -a 'systemctl restart containerd && systemctl is-active containerd'
ansible worker2 -i inventory/inventory.ini -b -m shell -a 'curl -k -I https://10.10.0.10:8443/v2/'
ansible worker2 -i inventory/inventory.ini -b -m shell -a 'ctr --namespace k8s.io images pull --hosts-dir /etc/containerd/certs.d 10.10.0.10:8443/backend-students-app:1.0'
ssh master1 
ssh worker1
ssh worker2
ssh master1 
cd ansible/
nano site.yml 
exit
mkdir -p ~/frontend
cd ~/frontend
touch index.html style.css app.js nginx.conf Dockerfile .dockerignore
cd ansible/
ansible-playbook site.yml 
kubectl port-forward -n project svc/backend 5000:5000
ssh master1 
cd ba
cd ..
cd backend/
ls
cat db.ks
cat db.js
cd 
kubectl exec -it -n project deploy/mysql -- mysql -u root -p
mysql
mysql --version
sudo mysql -u root -p
ssh master1
ls
cd frontend/
ls
nano index.html 
nano style.css 
nano app.js 
nano nginx.conf 
ssh master1 
nano Dockerfile 
nano .dockerignore 
cd ..
cd ansible/
cd roles/
ansible-galaxy frontend_image
ansible-galaxy init frontend_image
cd frontend_image/
cd defaults/
nano main.yml
cd ..
taskset 
cd tasks/
nano main.yml
nano build.yml
ssh master1
cd 
ssh master1
cd ansible/roles/frontend_image/
cd tasks/
nano build.yml 
nano push.yml
cd 
cd  ansible/
nano site.yml 
cd roles/
ansible-galaxy init frontend
cd frontend
cd defaults/
nano main.yml
cd ..
cd tasks/
nano main.yml 
nano deploy.yml
cd ..
mkdir templates
nano deployment.yml.j2
cd ansible/
lq
ls
cd roles/
cd frontend/templates/
ls
cd ..
ls
rm -rf deployment.yml.j2 
cd templates/
nano deployment.yml.j2
nano service.yml.j2
ssh master1
ls
nano service.yml.j2 
cd ..
cd tasks/
nano verify.yml
exit
cd ansible/
nano site.yml 
cd roles/
ls
cd mysql
ls
cd tasks/
nano main.yml 
exit
cd ansible/
ansible-playbook site.yml
ssh master1 
cd ansible/
ls
cd roles/
ls
cd ingress/
ls
cd tasks/
nano main.yml 
cd ..
cd backend
ls
cd tasks/
nano main.yml 
ls
cat prereqs.yml 
cat verify.yml 
cd 
cd ansible/
lq
cd roles/
ls
ansible-galaxy init app_ingress
cd app_ingress/
cd defaults/
nano main.yml 
cd ..
cd tasks/
nano main.yml 
nano deploy.yml
cd ..
mkdir templates
cd templates/
nano frontend-ingress.yml.j2
nano backend-ingress.yml.j2
nano verify.yml
cd 
cd ansible/
nano site.yml 
ls
nano site.yml 
cd roles/app_ingress/
lq
ls
cd tasks/
ks
lq
ls
nano main.yml 
nano verify.yml
cd ..
ls
cd templates/
ls
rm -rf verify.yml 
exit
ssh master1 
ssh master1
ssh worker1
sudo ls -l /etc/nginx/certs
sudo cp /etc/nginx/certs/nexus.crt /home/vagrant/nexus.crt
sudo chmod 644 /home/vagrant/nexus.crt
scp /home/vagrant/nexus.crt worker1:/tmp/nexus.crt
ssh worker1
ssh master1
ssh worker1
kubectl -n project delete pod frontend-7b94d7fc6b-sk87l
kubectl -n project rollout status deployment/frontend --timeout=180s
kubectl -n project get pods -o wide
ssh master1 
cd  ansible/
cd roles/
ansible-galaxy init jenkins
cd  jenkins/
cd defaults/
nano main.yml 
cd ..
cd tasks/
nano main.yml 
nano install.yml
nano configure.yml
nano verify.yml
cd 
cd ansible/
nano site.yml 
cd playbooks/tests/
nano 20-jenkins.yml
cd 
cd ansible/
ansible-playbook playbooks/tests/20-jenkins.yml
sudo rm -f /etc/apt/keyrings/jenkins-keyring.asc
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo gpg --dearmor -o /etc/apt/keyrings/jenkins-keyring.asc
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install -y jenkins
sudo rm -f /etc/apt/keyrings/jenkins-keyring.asc
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2026.key | sudo gpg --dearmor -o /etc/apt/keyrings/jenkins-keyring.asc
echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install -y fontconfig openjdk-21-jre
sudo apt install -y jenkins
cd roles/jenkins/tasks/
nano install.yml 
cd
cd ansible/
ansible-playbook playbooks/tests/20-jenkins.yml
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo rm -f /etc/apt/keyrings/jenkins-keyring.asc
sudo rm -f /etc/apt/keyrings/jenkins.gpg
sudo rm -f /tmp/jenkins.io.key
ansible-playbook playbooks/tests/20-jenkins.yml
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo rm -f /etc/apt/keyrings/jenkins-keyring.asc
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key | sudo gpg --dearmor -o /etc/apt/keyrings/jenkins-keyring.asc
echo 'deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/' | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install -y fontconfig openjdk-21-jre
sudo apt install -y jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins --no-pager
cat /etc/apt/sources.list.d/jenkins.list
ls -l /etc/apt/keyrings/jenkins-keyring.asc
sudo apt update
sudo rm -f /etc/apt/sources.list.d/jenkins.list
sudo rm -f /etc/apt/keyrings/jenkins-keyring.asc
sudo mkdir -p /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian-stable/jenkins.io-2026.key
echo 'deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/'   | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install -y fontconfig openjdk-21-jre
sudo apt install -y jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins --no-pager
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
nano site.yml 
ansible-playbook playbooks/tests/20-jenkins.yml
cd roles/
ansible-galaxy init roles/jenkins_setup
mkdir -p roles/jenkins_setup/files
touch roles/jenkins_setup/tasks/install_plugins.yml
touch roles/jenkins_setup/tasks/docker.yml
touch roles/jenkins_setup/tasks/kubeconfig.yml
touch roles/jenkins_setup/tasks/main.yml
touch roles/jenkins_setup/defaults/main.yml
touch roles/jenkins_setup/files/plugins.txt
touch playbooks/tests/21-jenkins_setup.yml
ls
rm -rf roles
cd ..
ansible-galaxy init roles/jenkins_setup
mkdir -p roles/jenkins_setup/files
touch roles/jenkins_setup/tasks/install_plugins.yml
touch roles/jenkins_setup/tasks/docker.yml
touch roles/jenkins_setup/tasks/kubeconfig.yml
touch roles/jenkins_setup/tasks/main.yml
touch roles/jenkins_setup/defaults/main.yml
touch roles/jenkins_setup/files/plugins.txt
touch playbooks/tests/21-jenkins_setup.yml
ls
cd roles/
ls
cd jenkins_setup/
cd defaults/
nano main.yml 
cd ..
cd files/
nano plugins.txt 
cd ..
cd tasks/
nano main.yml *
nano main.yml 
nano install_plugins.yml
nano docker.yml
nano kubeconfig.yml
cd 
cd ansible/playbooks/tests/
nano 21-jenkins_setup.yml 
cd ..
cd ...
cd ..
ansible-playbook playbooks/tests/21-jenkins_setup.yml
mkdir -p /home/vagrant/.kube
scp vagrant@10.10.0.11:/home/vagrant/.kube/config /home/vagrant/.kube/config
chmod 600 /home/vagrant/.kube/config
ssh master1 
mkdir -p /home/vagrant/.kube
scp vagrant@10.10.0.11:/home/vagrant/.kube/config /home/vagrant/.kube/config
chmod 600 /home/vagrant/.kube/config
ls -l /home/vagrant/.kube/config
kubectl --kubeconfig /home/vagrant/.kube/config get nodes
ansible-playbook playbooks/tests/21-jenkins_setup.yml
su -s /bin/bash -c "kubectl --kubeconfig ..." jenkins
cd roles/jenkins_setup/tasks/
nano kubeconfig.yml 
cd 
cd ansible/
ansible-playbook playbooks/tests/21-jenkins_setup.yml
sudo su -s /bin/bash -c 'kubectl --kubeconfig /var/lib/jenkins/.kube/config get nodes' jenkins
which kubectl
cd ..
sudo su -s /bin/bash -c '/usr/bin/kubectl --kubeconfig /var/lib/jenkins/.kube/config get nodes' jenkins
cd ansible/roles/jenkins_setup/
cd defaults/
nano  main.yml 
cd ..
cd tasks/
nano kubectl.yml
nano main.yml 
ls
rm -rf kubeconfig.yml 
nano kubeconfig.yml
cd ..
ansible-playbook playbooks/tests/21-jenkins_setup.yml
which kubectl
kubectl version --client
sudo su -s /bin/bash -c '/usr/bin/kubectl --kubeconfig /var/lib/jenkins/.kube/config get nodes' jenkins
ping 10.10.0.11
curl -k https://10.10.0.11:6443
ssh master1 
ansible-playbook playbooks/tests/21-jenkins_setup.yml
ping 10.10.0.11
curl -k https://10.10.0.11:6443
nc -zv 10.10.0.11 6443
cd ..
ls
cd backend/
cd ~/backend
nano Jenkinsfile
id jenkins
sudo su -s /bin/bash -c 'docker version' jenkins
sudo su -s /bin/bash -c '/usr/bin/kubectl --kubeconfig /var/lib/jenkins/.kube/config get nodes' jenkins
sudo setfacl -R -m u:jenkins:rwx /home/vagrant/backend
sudo setfacl -dR -m u:jenkins:rwx /home/vagrant/backend
sudop apt install setfacl
sudo apt install setfacl
sudo apt install acl
sudo setfacl -R -m u:jenkins:rwx /home/vagrant/backend
sudo setfacl -dR -m u:jenkins:rwx /home/vagrant/backend
sudo su -s /bin/bash -c 'ls -la /home/vagrant/backend' jenkins
sudo setfacl -R -m u:jenkins:rx /home/vagrant/backend
sudo setfacl -R -m u:jenkins:rwx /home/vagrant/backend/node_modules 2>/dev/null || true
sudo su -s /bin/bash -c 'ls -la /home/vagrant/backend' jenkins
getfacl /home/vagrant/backend
sudo setfacl -m u:jenkins:x /home
sudo setfacl -m u:jenkins:x /home/vagrant
sudo -u jenkins ls -la /home/vagrant/backend
sudo setfacl -R -m u:jenkins:rx /home/vagrant/backend
sudo setfacl -dR -m u:jenkins:rx /home/vagrant/backend
sudo setfacl -m u:jenkins:x /home
sudo setfacl -m u:jenkins:x /home/vagrant
sudo setfacl -R -m u:jenkins:rx /home/vagrant/backend
sudo setfacl -dR -m u:jenkins:rx /home/vagrant/backend
sudo su -s /bin/bash -c 'ls -la /home/vagrant/backend' jenkins
sudo setfacl -m u:jenkins:x /home
sudo setfacl -m u:jenkins:x /home/vagrant
sudo setfacl -R -m u:jenkins:rx /home/vagrant/backend
sudo setfacl -dR -m u:jenkins:rx /home/vagrant/backend
sudo su -s /bin/bash -c 'ls -la /home/vagrant/backend' jenkins
exit
cd ansible/
ansible-playbook site.yml 
.
ssh worker2
ansible-playbook site.yml 
ssh master1 
ansible-playbook site.yml 
ssh worker1 "sudo tee /etc/containerd/certs.d/10.10.0.10:8443/hosts.toml > /dev/null <<'EOF'
server = \"https://10.10.0.10:8443\"

[host.\"https://10.10.0.10:8443\"]
  capabilities = [\"pull\", \"resolve\"]
  skip_verify = true
EOF
sudo systemctl restart containerd
sudo systemctl restart kubelet
sudo crictl --runtime-endpoint unix:///run/containerd/containerd.sock pull 10.10.0.10:8443/frontend-students-app:1.0"
cd roles/jenkins/defaults/
nano main.yml 
cd ..
cd tasks/
nano main.yml 
ssh master1 
cd ansible/
ansible-playbook site.yml
cd ansible
ls
cd roles/
ls
cd nexus_proxy_tls/
ls
cd tasks/
ls
nano configure.yml 
