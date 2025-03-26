FROM ubuntu:latest
RUN apt update && apt install -y \
    nodejs npm openssh-server && \
    npm install -g wetty && \
    apt clean && rm -rf /var/lib/apt/lists/*
RUN useradd -m -s /bin/bash wetty && echo "wetty:password" | chpasswd
RUN mkdir /run/sshd && ssh-keygen -A
EXPOSE 8888
CMD service ssh start && wetty --port 8888 --ssh-host 127.0.0.1 --ssh-user wetty
