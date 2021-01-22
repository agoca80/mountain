#!/bin/sh

read -p "root password: " password
echo "$password" | pw mod user root -h 0

