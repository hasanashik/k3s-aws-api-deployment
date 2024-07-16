### Steps to Deploy
Install Ansible
pip install ansible
export LC_ALL="C.UTF-8" 
ansible --version

Set Environment Variables
export AWS_ACCESS_KEY_ID='your_access_key_id'
export AWS_SECRET_ACCESS_KEY='your_secret_access_key'

Run the Playbook
ansible-playbook -i inventory.ini launch_instances.yml

