# Configuration

By default, ansible will look for the ansible.cfg file in the current working directory.
Ansible will use the SSH client configuration to connect to the inventory hosts.

# Environment

```
export ANSIBLE_ROLES_PATH="..."
export VAULT_ADDR="..."
export VAULT_TOKEN="..."
```

# Bootstrap

```
pkg install python3 sudo
pw user add -mn admin -G wheel
passwd admin
echo "%wheel ALL=(ALL) NOPASSWD: ALL" >/usr/local/etc/sudoers.d/wheel
ssh-copy-id $HOST
```

# Testing

```
ansible all -m ping
ansible all -m setup
ansible current -m command -a uptime
# Module command is so frequent the it is the default module
ansible all -a date
ansible current -a date

ansible-playbook -l mountain roles/zfs/playbook.yml
ansible-playbook -l mountain roles/jailer/playbook.yml
```

# Jailers

```
./bin/play mountain jailer
./bin/play mountain base
./bin/play mountain jail name=base ip=192.168.1.40
./bin/play mountain jail name=base action=delete
```
