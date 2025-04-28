#!/bin/bash
# Install Node.js, npm, and PM2 if not installed

if ! command -v node > /dev/null; then
  sudo apt-get update
  sudo apt-get install nodejs-legacy -y
  sudo apt-get install npm -y
fi

if ! command -v pm2 > /dev/null; then
  sudo npm install pm2 -g
fi
