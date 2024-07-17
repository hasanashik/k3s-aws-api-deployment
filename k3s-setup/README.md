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
ansible-playbook -i inventory.ini install_k3s.yml 


