#!/bin/bash
set -x
exec > >(tee /home/timmy/init.log) 2>&1

whoami

# Node
curl -# -L https://nodejs.org/dist/v4.2.6/node-v4.2.6-linux-x64.tar.gz \
  | sudo tar xzf - --strip-components=1 -C /usr/local

export HOME=/home/timmy

touch $HOME/testing.txt
