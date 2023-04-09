cat > /etc/yum.repos.d/WANdisco-git.repo << EOF
[WANdisco-git]
name=WANdisco Git
baseurl=http://opensource.wandisco.com/rhel/\$releasever/git/\$basearch
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-WANdisco
EOF
rpm --import http://opensource.wandisco.com/RPM-GPG-KEY-WANdisco
yum install git -y
yum install python3 python3-pip python-setuptools python-yaml gcc python-dev libkrb5-dev sshpass -y
pip3 install --upgrade pip
pip install -r https://raw.githubusercontent.com/ansible-collections/azure/dev/requirements-azure.txt
pip3 install ansible pywinrm[credssp]
pip3 uninstall -y cryptography
pip3 install cryptography==36.0.2
curl https://packages.microsoft.com/config/rhel/8/prod.repo | sudo tee /etc/yum.repos.d/microsoft.repo
sudo dnf install -y powershell
