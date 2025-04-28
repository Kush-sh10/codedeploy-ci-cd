#!/bin/bash

# Choose directory based on deployment group
if [[ "$DEPLOYMENT_GROUP_NAME" == *"Dev"* ]]; then
    APP_DIR="/var/www/myapp-dev"
else
    APP_DIR="/var/www/myapp-prod"
fi

echo "Installing dependencies in $APP_DIR"

cd $APP_DIR
sudo npm install
