#!/bin/bash

if [ -f ~/.ssh/id_rsa ]; then
  echo -e '🔑  Found existing SSH key'
else
  echo -e '🔒  Generating new SSH key'
  ssh-keygen -t rsa -b 4096 -C "jsstrn@users.noreply.github.com"

  echo -e '🕵️  Starting the SSH agent'
  eval "$(ssh-agent -s)"

  echo -e '🔐  Adding your key to the SSH agent'
  ssh-add -K ~/.ssh/id_rsa

  echo -e '📋  Copying your public key to the clipboard'
  cat ~/.ssh/id_rsa.pub | pbcopy
fi
