wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
echo deb https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list
sudo apt-get -y update
sudo apt-get -y install jenkins
sudo systemctl start jenkins
sudo ufw allow 8080
sudo ufw enable
sudo ufw allow OpenSSH
apt-gat -y install haveged
