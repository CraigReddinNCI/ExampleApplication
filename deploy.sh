#!/usr/bin/env bash

sudo apt update && sudo apt install nodejs npm -y

# Install pm2 which is a production process manager for Node.js with a built-in load balancer.
sudo npm install -g pm2

# Stop any instance of our application running currently
pm2 stop example_app

# Change directory into the folder where the application is downloaded
cd ExampleApplication/

# Install application dependencies
npm install

# Start the application with the process name example_app using pm2
pm2 start ./bin/www --name example_app 