#!/bin/bash
set -e
echo "=== Updating system packages ==="
sudo apt update && sudo apt upgrade -y
echo "=== Installing Java (OpenJDK 17) ==="
sudo apt install -y openjdk-17-jdk
echo "=== Adding Jenkins GPG key and repo ==="
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
echo "=== Installing Jenkins ==="
sudo apt update
sudo apt install -y jenkins
echo "=== Starting and enabling Jenkins service ==="
sudo systemctl enable jenkins
sudo systemctl start jenkins
echo "=== Jenkins status ==="
sudo systemctl status jenkins
echo "=== Fetching initial Jenkins admin password ==="
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sleep 30
echo "Waiting for 30 seconds before installing the Terraform..."
wget https://releases.hashicorp.com/terraform/1.6.5/terraform_1.6.5_linux_386.zip
yes | sudo apt-get install unzip
unzip 'terraform*.zip'
sudo mv terraform /usr/local/bin/
