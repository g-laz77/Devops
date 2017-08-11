# Devops
Authbase project to integrate various tools onto devops.

## Tasks

### Install Curl
sudo apt-get install curl

### Install Make and build essentials
sudo apt-get install build-essentials
sudo apt-get install make

### Install Certbot 
Refer: https://certbot.eff.org/#ubuntuxenial-nginx

### Install Nginx
sudo apt-get install nginx 

### Install Ansible 
Refer: http://docs.ansible.com/ansible/intro_installation.html

### Install git
sudo apt-get install git

### Install node
Refer: https://tecadmin.net/install-latest-nodejs-npm-on-ubuntu/

### Setup certbot
Refer: https://www.digitalocean.com/community/tutorials/how-to-set-up-let-s-encrypt-certificates-for-multiple-apache-virtual-hosts-on-ubuntu-14-04

### Setup Clam AV
sudo apt-get update
sudo apt-get install clamav-daemon
sudo apt-get install clamav
clamscan -r|tail -n 9 >> av_result.txt

### Setup free Domain
Created using freenom and DNS was validated using manage DNS.

### Validate the functioning of certbot
Checked with "glaz77.tk" and https authentication was a success!

# How to use this?
 - install ansible.
 - run ansible-playbook playbook.yml in the code Directory.
