# install EPEL repo
sudo dnf install epel-release -y
# install ansible and other dependencies
sudo dnf install ansible openssl python39-winrm.noarch python39-jmespath -y
# install CredSSP package
pip3 install requests-credssp
# install community.windows collection
sudo ansible-galaxy collection install community.windows:1.9.0 -p /usr/lib/python3.9/site-packages/ansible_collections 
