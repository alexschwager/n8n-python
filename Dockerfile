FROM n8nio/n8n:next-debian

USER root

# Install Python 3 and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install --no-cache-dir requests && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER node



