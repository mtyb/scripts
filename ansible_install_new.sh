dnf install epel-release -y
dnf install ansible openssl python39-winrm.noarch python39-jmespath -y
pip3 install requests-credssp
ansible-galaxy collection install community.windows:1.9.0 -p /usr/lib/python3.9/site-packages/ansible_collections 
