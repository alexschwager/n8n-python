# Use n8n beta (next) as the base
FROM n8nio/n8n:next

# Switch to root so we can install packages
USER root

# Install Python 3 + pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean

# (Optional) Install extra Python packages globally
RUN pip3 install requests pandas numpy

# Switch back to node user for n8n
USER node
