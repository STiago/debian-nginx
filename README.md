# Devian nginx

Repository for the task.

### Connecting wiht ssh

Connection SSH:

    - Inside the directory .ssh I have created a file with clave named clave.pem

    - Permisos: chmod 400 clave.pem

    - Run to connection: ssh admin@52.201.188.38 -i clave.pem

![Image](https://github.com/STiago/debian-nginx/blob/gh-pages/images/t1.png)

![Image](https://github.com/STiago/debian-nginx/blob/gh-pages/images/t2.png)

Creating a new connection: 

    - ssh-keygen -t rsa -b 4096 -C "victoriasantiago@correo.ugr.es"
    
    - Copy the contain of: cat id_rsa.pub

    - Put the new key in GitHub.


### Provisioning

Ansible:

    - Install Ansible with: sudo apt-get install ansible

    - Creating host, ansible.cfg and playbook.yml files.

    - Provisioning with: ansible-playbook playbook.yml

![Image](https://github.com/STiago/debian-nginx/blob/gh-pages/images/t10.png)


### Deployment - Containers

Docker:

    - Install in the aws machine docker using: sudo apt-get intsall docker.io
    - I created an automatic build from DockerHub using my Dockerfile which is in my GitHub repository named debian-nginx.
    - Then I did docker pull stiago/debian-nginx
    - sudo service docker start
    - sudo docker run -it stiago/debian-nginx bash

![Image](https://github.com/STiago/debian-nginx/blob/gh-pages/images/t3.png)

![Image](https://github.com/STiago/debian-nginx/blob/gh-pages/images/t5.png)


Finally we have our container:

![Image](https://github.com/STiago/debian-nginx/blob/gh-pages/images/t8.png)


### Orchestation

If I will have more time I could do the orchestation with Vagrant using the vagrantfile and with this I could provisioned and do the container with Ansible and Docker.


### License

This software has GNU GPL v3 license.
