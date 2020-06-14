# Configuration

By default, ansible will look for the ansible.cfg file in the current working directory. Ansible will use the SSH client configuration to connect to the inventory hosts.

# Bootstrap

## FreeBSD

```
pkg install python3 sudo
visudo
ssh-copy-id $HOST
```

# Examples

```
ansible all -m setup
ansible all -m ping
ansible all -m command -a uptime

# Module command is so frequent the it is the default module
ansible all -a uptime
ansible all -a date

ansible current-dev -m ping
```