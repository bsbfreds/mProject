#!/bin/bash
set -e  # Exit immediately if a command fails

# Ensure PM2 is found in the PATH
export PATH=$PATH:/usr/local/bin:/home/ec2-user/.nvm/versions/node/v18.*/bin

# Stop only the specific application instead of killing all processes
pm2 stop cddemo || true
pm2 delete cddemo || true
