#!/usr/bin/bash

read -p "Enter your name: " name
echo "Your name is $name"

read -sp "Enter your Password: " password
echo "Your password is $password"

name=$0
echo "The script name is $name"

name=$1
echo "The first argument is $name"

name=$2
echo "The second argument is $name"