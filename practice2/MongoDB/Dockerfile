# Use the official MongoDB image as a base
FROM mongo:latest

# Install necessary packages for downloading and installing mongosh
RUN apt-get update && \
    apt-get install -y wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Download and install mongosh
RUN wget https://downloads.mongodb.com/compass/mongosh-1.10.1-linux-x64.tgz && \
    tar -zxvf mongosh-1.10.1-linux-x64.tgz && \
    cp mongosh-1.10.1-linux-x64/bin/mongosh /usr/local/bin/ && \
    rm -rf mongosh-1.10.1-linux-x64.tgz mongosh-1.10.1-linux-x64

COPY init.js /docker-entrypoint-initdb.d/

# Expose MongoDB default port
EXPOSE 27017
