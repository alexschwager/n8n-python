FROM n8nio/n8n:next

USER root

# Install Python 3 + pip on Alpine
RUN apk add --no-cache python3 py3-pip

# (Optional) Install extra Python packages globally
RUN pip3 install requests pandas numpy

USER node

