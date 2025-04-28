#!/bin/bash

# Choose directory based on deployment group
if [[ "$DEPLOYMENT_GROUP_NAME" == *"Dev"* ]]; then
    APP_DIR="/var/www/myapp-dev"
else
    APP_DIR="/var/www/myapp-prod"
fi

echo "Starting app from $APP_DIR"

# Stop existing pm2 processes
pm2 stop all || true

# Start app
pm2 start $APP_DIR/index.js
