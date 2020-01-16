wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EB3E94ADBE1229CF
sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt -y install code

sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt update
sudo apt -y install golang-go

sudo apt -y install default-jdk
sudo apt -y install git
sudo apt -y install maven
sudo apt -y install jq
sudo apt -y install net-tools
sudo apt -y install viM

sudo snap install goland --classic
sudo snap install pycharm-community --classic
sudo snap install intellij-idea-ultimate --classic

sudo snap install kubectl --classic

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo add-apt-repository multiverse && sudo apt update
sudo apt install virtualbox
sudo apt install linux-headers-`uname -r`
sudo dpkg-reconfigure virtualbox-dkms

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
