# update system

sudo apt-get update -y
sudo apt-get dist-upgrade -y
sudo apt autoremove -y
sudo apt-get autoclean
sudo apt-get update --fix-missing

# install git

sudo apt-get purge runit -y
sudo apt-get purge git-all -y
sudo apt-get purge git -y
sudo apt-get autoremove -y
sudo apt update -y
sudo apt install git -y

# install curl

sudo apt install curl -y

# install snap

sudo apt install snapd -y
sudo snap install snap-store
sudo snap install code --classic

# install python

sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update -y
sudo apt-get install python3.7 -y
sudo apt install python3-pip -y
echo "alias python=python3" >> ~/.bash_aliases
source ~/.bash_aliases
echo "alias pip=pip3" >> ~/.bash_aliases

# install docker 

sudo apt-get remove docker docker-engine docker.io containerd runc -y
sudo apt-get update -y
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo apt install docker-compose -y
sudo usermod -aG docker $USER

