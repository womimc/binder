FROM ubuntu:latest
RUN apt-get update && apt-get install -y wget bash \
    && wget -O /usr/local/bin/gotty https://github.com/yudai/gotty/releases/latest/download/gotty_linux_amd64 \
    && chmod +x /usr/local/bin/gotty \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
EXPOSE 8888
CMD ["gotty", "-p", "8888", "-c", "womimc:1234", "bash"]
