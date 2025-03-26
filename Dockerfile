FROM ubuntu:latest
RUN apt update && apt install -y \
    nodejs \
    npm \
    openssh-server \
    python3-distutils \
    python3-pip \
    build-essential \
    curl && \
    npm install -g npm@latest && \
    npm install -g wetty && \
    apt clean && rm -rf /var/lib/apt/lists/*
EXPOSE 8888
CMD ["wetty", "--port", "8888"]
