#!/bin/bash
set -x
exec > >(tee /home/ubuntu/init.log) 2>&1

# Node
curl -# -L https://nodejs.org/dist/v4.2.6/node-v4.2.6-linux-x64.tar.gz \
  | sudo tar xzf - --strip-components=1 -C /usr/local

export HOME=/home/ubuntu

touch $HOME/testing.txt
