#!/bin/sh

set -ex

# Set LC_ALL
update-locale LC_ALL="en_US.UTF-8"

# Create a user for the app.
addgroup --gid 9999 app
adduser --uid 9999 --gid 9999 --disabled-password --gecos "Application" app
usermod -L app
mkdir -p /home/app/.ssh
chmod 700 /home/app/.ssh
chown app:app /home/app/.ssh
