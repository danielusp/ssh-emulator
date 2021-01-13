#!/bin/bash

#Generates Public and Private ssh keys and send to the server the public key

ipadd=$(docker inspect -f "{{ .NetworkSettings.IPAddress }}" ssh-docker)

ssh-keygen -f .ssh/ssh_docker -t ecdsa -b 521
ssh-copy-id -i .ssh/ssh_docker.pub user@$ipadd