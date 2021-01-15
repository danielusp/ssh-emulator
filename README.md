# SSH Connection

Simulates ssh connections on localhost. When you run the project a default user called *user* is created with a password *1234*.

In order to run this project you need Docker

## Setup

Build image

```bash
make build
```

Run container

```bash
make run
```

Generates the public and private access keys

User's password: *1234*

*Obs: Every time you run the container a new key needs to be generated*

```bash
make sshkeygen
```

Get server's IP

```bash
make getip
```

Up node server 

( http://[ip address]/, http://[ip address]/about )

```bash
make up
```

Kill server

```bash
make down
```

Connect server via ssh

```bash
make ssh
```

Send two files to server

*Obs: In order to see the modificatios from a deploy you need to down/up server*

```bash
make scp
```

Stop container (down all the services)

```bash
make stop
```

