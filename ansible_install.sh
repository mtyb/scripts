yum update -y
yum upgrade -y
yum install git -y
yum install python3 python3-pip python-setuptools python-yaml gcc python-dev libkrb5-dev sshpass -y
pip3 install --upgrade pip
pip3 install ansible[azure] pywinrm[credssp]
