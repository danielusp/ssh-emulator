#!/bin/bash

# SSH commands

ipadd=$(docker inspect -f "{{ .NetworkSettings.IPAddress }}" ssh-docker)
ssh -o StrictHostKeyChecking=no -i .ssh/ssh_docker user@$ipadd "$@"