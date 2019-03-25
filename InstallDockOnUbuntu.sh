# This script will install docker in ubuntu OS.

echo "Removing if exist docker-engine docker.io containerd runc modules"
apt-get remove docker docker-engine docker.io containerd runc

apt-get update

apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt-get update

apt-get install docker-ce docker-ce-cli containerd.io

apt-get install docker-ce=5:18.09.1~3-0~ubuntu-xenial docker-ce-cli=5:18.09.1~3-0~ubuntu-xenial containerd.io

echo "Docker Installed Succcessfully."
