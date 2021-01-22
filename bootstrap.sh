#!/bin/sh

password='$6$uxl5IBBDuGtqvmB6$xB3Qyjd72hrq8Q2LiWdcBjP1oe3DyFBQ2IO3k7jlg2lIbocv7q1hh7GnCjCB5I6tAj03mvv87/PikEMsznxr40'

packages='python3 sudo'

freebsd () {
    export ASSUME_ALWAYS_YES="yes"

    echo "$password" | pw mod user -H 0 root
    echo "$password" | pw add user -H 0 -mn admin -G wheel
    pkg bootstrap 
    pkg install $packages
}

bootstrap=freebsd

set -x

$bootstrap
