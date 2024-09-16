# Use Ubuntu 23.10 as the base image
FROM ubuntu:23.10

ENV GO_VERSION=1.23.1

# Install dependencies and tools
RUN apt-get update && \
    apt-get install -y wget curl git build-essential && \
    # Install Golang
    wget https://go.dev/dl/go$GO_VERSION.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go$GO_VERSION.linux-amd64.tar.gz && \
    rm go$GO_VERSION.linux-amd64.tar.gz && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set PATH for Golang
ENV PATH=$PATH:/usr/local/go/bin

# Verify installations
# RUN go version && node --version
