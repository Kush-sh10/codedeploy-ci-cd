#!/bin/bash

APP_DIR="/home/ubuntu/myapp"

# Change ownership of the app directory to ubuntu user
chown -R ubuntu:ubuntu "$APP_DIR"

# Switch to the app directory
cd "$APP_DIR"

# Run npm install as ubuntu user
sudo -u ubuntu npm install
