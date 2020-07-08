# Begin with a basic node image
FROM node
# Install Lightning-CLI
RUN npm i -g WebPlatformForEmbedded/Lightning-CLI
# Upgrade and add python
RUN apt-get update && apt-get install python -y
RUN apt-get install python-pip -y
# Install AWSCLI
RUN pip install awscli
# Install JQ for versioning
RUN apt-get install -yqq jq
