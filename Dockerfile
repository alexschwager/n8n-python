# Use Node.js on Debian (not Alpine!)
FROM node:18-bullseye

# Install Python + pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip build-essential && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Install n8n (you can pin a version instead of latest)
RUN npm install -g n8n@1.64.0

# Install Python packages for API calls
RUN pip3 install --no-cache-dir requests pandas numpy

# Expose default n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]

