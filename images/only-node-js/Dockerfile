# Use Ubuntu 23.10 as the base image
FROM ubuntu:23.10

ENV NODE_VERSION=22.0.0

# Install dependencies and tools
RUN apt-get update && \
    apt-get install -y wget curl git build-essential && \
    # Install Node.js
    curl -fsSL https://deb.nodesource.com/setup_$NODE_VERSION.x | bash - && \
    apt-get install -y nodejs && \
    # Clean up
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

