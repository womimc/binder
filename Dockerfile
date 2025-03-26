FROM ubuntu:latest
RUN apt-get update && apt-get install -y wget bash \
    && wget -O /usr/local/bin/gotty https://github.com/yudai/gotty/releases/download/v2.0.0-alpha.3/gotty_2.0.0-alpha.3_linux_amd64.tar.gz \
    && tar -xvzf /usr/local/bin/gotty -C /usr/local/bin \
    && chmod +x /usr/local/bin/gotty \
    && apt-get clean && rm -rf /var/lib/apt/lists/*
EXPOSE 8888
CMD ["gotty", "-p", "8888", "-c", "womimc:1234", "bash"]
