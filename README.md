# Configuration

By default, ansible will look for the ansible.cfg file in the current working directory. Ansible will use the SSH client configuration to connect to the inventory hosts.

# Environment

```
export ANSIBLE_ROLES_PATH="..."
export VAULT_ADDR="..."
export VAULT_TOKEN="..."
```

# Bootstrap

```
pkg install python3 sudo
echo "%wheel ALL=(ALL) NOPASSWD: ALL" >/usr/local/etc/sudoers.d/wheel
ssh-copy-id $HOST
```

# Examples

```
ansible all -m setup
ansible current -m ping
ansible current -m command -a uptime

# Module command is so frequent the it is the default module
ansible all -a date

ansible-playbook -l current site.yml
ansible-playbook plays/airflow.yml
ansible-playbook plays/mountain.yml
```

