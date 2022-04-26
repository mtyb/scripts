cd $2
#create installation directory
sudo mkdir $2/myagent
sudo chmod -R o+w $2/myagent
cd $2/myagent
#Download and install the agent
sudo wget "https://vstsagentpackage.azureedge.net/agent/2.202.1/vsts-agent-linux-x64-2.202.1.tar.gz"
sudo tar zxvf *.tar.gz
cd ..
sudo chmod -R o+w $2/myagent
cd $2/myagent
#Install dependencies
./bin/installdependencies.sh
#Configure agent
./config.sh --unattended --url $3 --auth $4 --token $1 --pool $5 --agent $(hostname) --runAsService
sudo ./svc.sh install 
sudo ./svc.sh start 
sudo ./svc.sh status
