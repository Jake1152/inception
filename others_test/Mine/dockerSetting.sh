sudo apt-get update

sudp curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-get add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debina $(lib_release -cs) stable" 

sudo apt-get update

sudo apt-get install -y docker.io

sudo chmod 666 /var/run/docker.sock

# # 도커 컴포즈 설치 (1.29.2 버전)
sudo curl -L "https://github.com/docker/compose/release/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo systemctl restart docker
sudo chmod 666 /var/run/docker.sock
sudo chmod +x /usr/local/bin/docker-compose

sudo echo "127.0.0.1	jim.42.fr" >> /etc/hosts