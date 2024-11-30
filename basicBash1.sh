#!/usr/bin/bash

echo "Hello World"

name=Rifat
echo "My name is $name"

age=23
echo "My age is ${age}Y"

echo "My location is ${location:-Dhaka}"

username="rifatsaown"
echo "My lastname is ${username:5:5}"
echo "My firstname is ${username:0:5}"
echo "My name is ${username: -5}"
echo "My updated name is ${username/rifat/Rifat }"

filename="devops.sh"
echo "File name extension is ${filename: -3}"
echo "File extension is ${filename##*.}"
echo "File name is ${filename%.*}"

