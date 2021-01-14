# pcp-demo

#Inventory example
[pcp]
pcp-master.lab.example.com
pcp-client1.lab.example.com
pcp-client2.lab.example.com

[pcp-master]
pcp-master.lab.example.com

#Install pcp-zeroconf to all hosts
ansible-playbook pcp-client.yml 

#For centralization logging.
[ansible@pcp-master ~]$ sudo ./addpcpclient.sh pcp-client1.lab.example.com
[ansible@pcp-master ~]$ sudo ./addpcpclient.sh pcp-client2.lab.example.com

#For Install grafana
ansible-playbook pcp-grafana.yml 
