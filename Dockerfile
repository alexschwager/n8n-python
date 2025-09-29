FROM n8nio/n8n:next

USER root

# Install Python 3, pip, and build dependencies for numpy/pandas
RUN apk add --no-cache python3 py3-pip build-base gfortran bash

# Install Python packages
RUN pip3 install requests pandas numpy

USER node
