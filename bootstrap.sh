#!/bin/sh

freebsd () {
    export ASSUME_ALWAYS_YES

    password='$6$uxl5IBBDuGtqvmB6$xB3Qyjd72hrq8Q2LiWdcBjP1oe3DyFBQ2IO3k7jlg2lIbocv7q1hh7GnCjCB5I6tAj03mvv87/PikEMsznxr40'
    packages='python3 sudo'

    echo "$password" | pw mod user root -H 0
    pkg bootstrap 
    pkg install $packages
}

freebsd
