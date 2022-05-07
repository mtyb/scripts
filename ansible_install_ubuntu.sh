apt-get update -y
apt-get upgrade -y
apt-get install git -y
apt-get install python3 python3-pip python-setuptools python-yaml gcc python-dev libkrb5-dev sshpass -y
pip3 install --upgrade pip
pip3 install ansible[azure] pywinrm[credssp]
