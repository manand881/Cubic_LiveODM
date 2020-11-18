# update system

apt-get update -y
apt-get dist-upgrade -y
apt autoremove -y
apt-get autoclean
apt-get update --fix-missing

# install git

apt-get purge runit -y
apt-get purge git-all -y
apt-get purge git -y
apt-get autoremove -y
apt update -y
apt install git -y

# install curl

apt install curl -y

# install snap

apt install snapd -y
snap install snap-store
snap install code --classic

# install python

add-apt-repository ppa:deadsnakes/ppa
apt-get update -y
apt-get install python3.7 -y
apt install python3-pip -y
echo "alias python=python3" >> ~/.bash_aliases
source ~/.bash_aliases
echo "alias pip=pip3" >> ~/.bash_aliases

# install docker 

apt-get remove docker docker-engine docker.io containerd runc -y
apt-get update -y
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update -y
apt-get install docker-ce docker-ce-cli containerd.io -y
curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
apt install docker-compose -y
usermod -aG docker $USER

# install NodeJS

apt install nodejs
node –version
apt install npm
npm –version
apt-get update
apt-get upgrade 