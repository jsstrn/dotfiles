#!/usr/bin/env bash

set -e

function generateKeys {
  echo -e '\n🔒  Generating new SSH key\n'
  ssh-keygen -t rsa -b 4096 -C "jsstrn@users.noreply.github.com"
}

function addKeysToAgent {
  echo -e '\n🕵️  Starting the SSH agent\n'
  eval "$(ssh-agent -s)"

  echo -e '\n🔐  Adding your key to the SSH agent\n'
  ssh-add -K ~/.ssh/id_rsa
}

function copyKeysToClipboard {
  echo -e '\n📋  Copying your public key to the clipboard\n'
  cat ~/.ssh/id_rsa.pub | pbcopy
}

if [ -f ~/.ssh/id_rsa ]; then
  echo -e '\n🔑  Found existing SSH key\n'
else
  generateKeys && addKeysToAgent && copyKeysToClipboard
fi
