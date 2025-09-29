FROM n8nio/n8n:next

USER root

# Install Python 3, pip, and bash
RUN apk add --no-cache python3 py3-pip bash

# Install requests for API calls
RUN pip3 install requests

USER node

