FROM n8nio/n8n:next

USER root

# Install Python 3 and build dependencies
RUN apk add --no-cache python3 py3-setuptools py3-wheel bash build-base \
    && python3 -m ensurepip \
    && pip3 install --no-cache --upgrade pip setuptools wheel \
    && pip3 install --no-cache requests

USER node


