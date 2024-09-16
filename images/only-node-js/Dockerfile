# Use Ubuntu 23.10 as the base image
FROM ubuntu:23.10

# Set environment variables for Golang
ENV GO_VERSION=1.23.1
ENV NODE_VERSION=22.0.0

# Install dependencies and tools
RUN apt-get update && \
    apt-get install -y wget curl git build-essential && \
    # Install Golang
    wget https://go.dev/dl/go$GO_VERSION.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go$GO_VERSION.linux-amd64.tar.gz && \
    rm go$GO_VERSION.linux-amd64.tar.gz && \
    # Install Node.js
    curl -fsSL https://deb.nodesource.com/setup_$NODE_VERSION.x | bash - && \
    apt-get install -y nodejs && \
    # Clean up
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set PATH for Golang
ENV PATH=$PATH:/usr/local/go/bin

# Verify installations
# RUN go version && node --version
