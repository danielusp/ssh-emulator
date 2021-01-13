FROM ubuntu:18.04

# Install all dependencies
RUN apt-get update && apt-get install ssh vim curl -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -y nodejs

# Create default user
RUN useradd user
RUN echo 'user:1234' | chpasswd

COPY ./host/user/app /home/user/app

RUN chown -R user:user /home/user

# Important scripts
COPY ./scripts/docker-entrypoint.sh /scripts/docker-entrypoint.sh
RUN chmod +x /scripts/docker-entrypoint.sh
COPY ./scripts/killnode.sh /scripts/killnode.sh
RUN chmod +x /scripts/killnode.sh

# The image starts here
ENTRYPOINT ["/scripts/docker-entrypoint.sh"]