yum groupinstall 'development tools' -y && yum install wget openssl-devel bzip2-devel libffi-devel xz-devel -y
wget https://www.python.org/ftp/python/3.9.6/Python-3.9.6.tgz
tar xzf Python-3.9.6.tgz
cd Python-3.9.6 && ./configure --enable-optimizations
make altinstall
ls /usr/local/bin/python*
alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.9 1 && alternatives --set python3 /usr/local/bin/python3.9 && echo "2" | alternatives --config python
/usr/local/bin/python3.9 -m pip install --upgrade pip
ls /usr/local/bin/pip*
alternatives --install /usr/bin/pip pip /usr/local/bin/pip3.9 1 && alternatives --set pip /usr/local/bin/pip3.9
