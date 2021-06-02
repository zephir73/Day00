#!/bin/bash

cat /etc/group | awk -F: '{print $1 ","}' >> groups.txt

awk 'BEGIN{RS="\1";ORS="";getline;gsub("\n","");print>ARGV[1]}' groups.txt

cat groups.txt

rm groups.txt
