#!/bin/sh

set -ex

if ! id $local_user; then
    pw user add $local_user -mn -G wheel -w random
fi

if id freebsd; then
    pw user del freebsd -r
fi

authorized_keys=$(fetch $bootstrap/authorized_keys)

export ASSUME_ALWAYS_YES="yes"
pkg bootstrap 
pkg install python3 sudo

echo "%wheel ALL=(ALL) NOPASSWD: ALL" >/usr/local/etc/sudoers.d/wheel

exit 0


    authorized_keys='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDalVMHUCB9ZVxIqKLZS4tkRjWqL92jEzva4NljaGg97vwgp/nQTymy7ZswuYltN3IwzSGJnSydlc/QQELnoGODjXWajjUpN11QYmFEPJUMj+CdtkNoVo8CIwZxJT963G2GBqiIXcY/S33DvdvQQ7JgRmn2i8QxM6xKG3OJpC8DJEFgnTk2bMy9ZQvFV6hcJW7Dg/X2Y+Ma/XCjqiVzgFxrXhL9ry8wqblKbFGCFLyhvLUHEmLRphGaSRhphoTFayLtB70EyeHF1J31sfviVBvTTViVTCCZ3AGThlq1iXfRjcMSnhx2cM4D5ci7S2TXmH6PFMNtqHl2kpRpipAOhIpp//3ZXrDSj9mphbdTKxQ1DHO4Q/3I1FPUIeGlzOD+KReq7VuCAcqTAheJ4Bqj+0mpj0tRAAEGLoxXwPsQs3BR1shg+VPBCKUDbGfg+KxEqeDzGrTAYwMzHPjm60ETsMSa1/19+7kzyQW5po+9RWNGW++3LIoJKcDl9GBmwHoA87k= ansible'
}

user () {
    
    echo "$2" | pw mod user "$1" -H 0
}

pw user add admin -m -G wheel

user_password root "$password_root"
user_password admin "$passowrd_admin"

# Create ansible user if it doesn't exist
id ansible || pw user add -mn ansible -G wheel
mkdir ~ansible/.ssh
echo $ansible > ~ansible/.ssh/authorized_keys
