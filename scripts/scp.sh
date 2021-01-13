#!/bin/bash

# Send files to server
ipadd=$(docker inspect -f "{{ .NetworkSettings.IPAddress }}" ssh-docker)

scp -o StrictHostKeyChecking=no -i .ssh/ssh_docker host/user/app/$@ user@$ipadd:/home/user/app/$@