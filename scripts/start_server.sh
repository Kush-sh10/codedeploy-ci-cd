#!/bin/bash

sudo su 

APP_DIR="/home/ubuntu/myapp"


# Switch to the app directory
cd "$APP_DIR"

# Start the app as ubuntu user, redirecting logs
npm start > app.log 2>&1 &
