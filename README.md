# drachtio-mrf-ansible
Ansible up a freeswitch media server for drachtio

### Create a deploy user on the freeswitch server/VM 

This step is optional, but I like to create a user account on the server that has password-less sudo access (i.e. ssh key-based) under which to install all software

```
ansible-playbook -i "your-server-ip-address-goes-here," -u root --ask-pass create_deploy_user.yml
```
> NB: that comma at the end of the -i (inventory) param is not a typo.

### Install freeswitch with mrf dialplan

```
ansible-playbook -i your-ansible-inventory-filename -u deploy freeswitch.yml
```
Your inventory file should contain a list of one or more ip addresses (or dns names) of your freeswitch servers
```
[freeswitch]
ip-address-1
ip-address-2
..
```
