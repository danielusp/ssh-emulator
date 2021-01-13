build:
	@docker build -t ssh .

run:
	@docker run --rm -it -d --cpus=0.2 --memory=300m --hostname ssh-docker --name ssh-docker ssh

ssh:
	./scripts/ssh.sh

sshkeygen:
	./scripts/sshkeygen.sh

getip:
	@docker inspect -f "{{ .NetworkSettings.IPAddress }}" ssh-docker

up:
	./scripts/ssh.sh "node /home/user/app/app.js" &

down:
	./scripts/ssh.sh "/scripts/killnode.sh" &

scp:
	./scripts/scp.sh app.js
	./scripts/scp.sh modules/new.js

stop:
	@docker stop ssh-docker