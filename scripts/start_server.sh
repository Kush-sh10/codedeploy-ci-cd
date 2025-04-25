#!/bin/bash

APP_DIR="/home/ubuntu/myapp"

# Change ownership just in case (optional if already done)
chown -R ubuntu:ubuntu "$APP_DIR"

# Switch to the app directory
cd "$APP_DIR"

# Start the app as ubuntu user, redirecting logs
sudo -u ubuntu nohup npm start > app.log 2>&1 &
