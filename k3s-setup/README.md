### Steps to Deploy
# Install Ansible
pip install ansible
export LC_ALL="C.UTF-8" 
ansible --version

pip install boto boto3 ansible
apt update
apt install iputils-ping
apt install vim

# Generate a ssh key file and change permission to 400.
 chmod 400 zaman-key.pem 
 
# Run Ansible playbook:
ansible-playbook  launch_instances.yml  
![alt launch_instances](https://github.com/hasanashik/k3s-aws-api-deployment/blob/main/k3s-setup/screenshots/2-run-playbook-launch-ec2.PNG?raw=true)
![alt launch_instances](https://github.com/hasanashik/k3s-aws-api-deployment/blob/main/k3s-setup/screenshots/2-run-playbook-launch-ec2-2.PNG?raw=true)

Auto generated inventory file
![alt launch_instances](https://github.com/hasanashik/k3s-aws-api-deployment/blob/main/k3s-setup/screenshots/4-inventory-file-updated-automatically.PNG?raw=true)


# Install k3s
ansible-playbook -i inventory.ini install_k3s.yml 


