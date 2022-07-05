#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
# Install pm2 which is production process manager for Node.js with built-in load balancer
sudo npm install -g pm2
# stop any instance of our application currently running
pm2 stop sample_app
# change directory into folder where application is downloaded
cd SampleApplication/
# Install application dependencies
npm install
# Start the application with the process name example_app using pm2
pm2 start ./bin/www --name sample_app