cd /
#create installation directory
sudo mkdir myagent
sudo chmod -R o+w myagent
cd myagent
#Download and install the agent
sudo wget "https://vstsagentpackage.azureedge.net/agent/2.202.1/vsts-agent-linux-x64-2.202.1.tar.gz"
sudo tar zxvf *.tar.gz
#Install dependencies
/myagent/bin/installdependencies.sh
#Configure agent
/myagent/config.sh --unattended --token $1 --url $2 --auth $3 --pool $4 --runAsService --acceptTeeEula
