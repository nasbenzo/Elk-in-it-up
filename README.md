# Elk-in-it-up
What I have done so far
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

https://drive.google.com/file/d/1Bw7VZihId_alW8wgkdvztycidfdX2hm9/view?usp=sharing

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _config_ file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: from ansible container root 'cd /etc/ansible' run command ansible-playbook install-elk.yml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- _TODO: What aspect of security do load balancers protect? Cloud Security, DDOS prevention  What is the advantage of a jump box?_ If configured correctly, it can be a secured way of accessing other devices and creating a VNET without putting your device at risk.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _data____ and system _logs____.
- _TODO: What does Filebeat watch for?_ file systems that have been changed
- _TODO: What does Metricbeat record?_ metric data from the OS and services running on my servers

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.8   | Ubuntu           |
| Web-1    | Webserver| 10.0.0.12  | Ubuntu           |
| Web-2    | Webserver| 10.0.0.13  | Ubuntu           |
| ELK VM   | Webserver| 10.1.0.4   | Ubuntu           |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the _JumpBox_ machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- _TODO: my public IP (Changes depending on ISP)_

Machines within the network can only be accessed by _Jump Box Provisioner____.
- _TODO: Which machine did you allow to access your ELK VM? What was its IP address?_Jump Box Provisioner Ansible container IP: 10.0.0.8 using my machine's public IP

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | yes                 | 47.41.59.79          |
| Web-1    | No                  |                      |
| Web-2    | No                  |                      |
| Elk VM   | No                  | 47.41.59.79          |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- _TODO: What is the main advantage of automating configuration with Ansible?_Deployment is faster than setting up 1 machine at a time

The playbook implements the following tasks:
- _TODO: In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._

- Increase Virtual memory of ELK VM
- Install docker.io and pip3
- Install Docker python module
- Download and Launch elk docker
- Enable services on boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.
https://docs.google.com/drawings/d/147MWx3k7gCkLMb8s5wA-8v6mRkUkmV7Pxfch4N9LQmA/edit?usp=sharing

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_
- Web-1 10.0.0.12
- Web-2 10.0.0.13

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed. Microbeats

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

- Filebeat collects data of the file system
- Metricbeat collects machine metrics and uptime

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _playbook_ file to __Control Node___.
- Update the _hosts_ file to include...webservers and ELK VM ip
- Run the playbook, and navigate to _Kibana_ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? nano Hosts 
- _How do I specify which machine to install the ELK server on versus which to install Filebeat on?_ in the hosts file, put the Private IP of the ELK VM 
- _Which URL do you navigate to in order to check that the ELK server is running? URL: http://ELKVMIP:5601 (ELKVMIP - 20.109.125.125:5601)

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
"ansible-playbook install-elk.yml for elk container"
"ansible-playbook filebeat.yml"
"ansible-playbook metricbeat"
