### install Epel Release repo
dnf install epel-release -y
### install Ansible
dnf install ansible -y
### install OpenSSL
dnf install openssl -y
### install WinRM module for Python and Jmespath module
dnf install python39-winrm.noarch python39-jmespath -y
### install WinRM CredSSP module
pip3 install requests-credssp
### install Ansible Windows Community collection
ansible-galaxy collection install community.windows:1.9.0 -p /usr/lib/python3.9/site-packages/ansible_collections 
