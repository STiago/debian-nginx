# devian-nginx

Reposiory for the task.

### Connecting wiht ssh

Connection SSH:

    - Inside the directory .ssh I have created a file with clave named clave.pem
    - Permisos: chmod 400 clave.pem
    - Run to connection: ssh admin@52.201.188.38 -i clave.pem


### Provisioning

Ansible:

    - Install Ansible with: sudo apt-get install ansible
    - Creating host, ansible.cfg and playbook.yml files.
    - Provisioning with: ansible-playbook playbook.yml

#
Docker:

    - Install in the aws machine docker using: sudo apt-get intsall docker.io
    - I created an automatic build from DockerHub using my Dockerfile which is in my GitHub repository named debian-nginx.
    - Then I did docker pull stiago/debian-nginx
    - sudo service docker start
    - sudo docker run -it stiago/debian-nginx bash
