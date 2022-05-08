yum update -y
yum upgrade -y
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
pip3 install ansible[azure]==2.9.10 pywinrm[credssp]
