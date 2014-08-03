#!/bin/sh

set -ex

apt-get update
apt-get install -y build-essential
apt-get install -y puppet git
