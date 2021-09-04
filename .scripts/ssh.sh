#!/usr/bin/env bash

# set -x # for debugging; prints executed commands
set -e

PRIVATE_KEY=~/.ssh/id_rsa
PUBLIC_KEY=${PRIVATE_KEY}.pub

echo ${PUBLIC_KEY}

function openGitHub {
  echo -e '\n🔒  Login to to your GitHub\n'
}

function generateKeys {
  echo -e '\n🔒  Generating new SSH key\n'
  ssh-keygen -t rsa -b 4096 -C "jsstrn@users.noreply.github.com"
}

function addKeysToAgent {
  echo -e '\n🕵️  Starting the SSH agent\n'
  eval "$(ssh-agent -s)"

  echo -e '\n🔐  Adding your key to the SSH agent\n'
  # ssh-add -K ~/.ssh/id_rsa
  ssh-add -K ${PRIVATE_KEY}
}

function copyKeysToClipboard {
  echo -e '\n📋  Copying your public key to the clipboard\n'
  # cat ~/.ssh/id_rsa.pub | pbcopy
  cat ${PUBLIC_KEY} | pbcopy
}

function isGitHubInstalled {
  command -v gh &> /dev/null
}

function promptUserForKeyFileTitle {
  echo -e '🙋‍♀️  Enter title for key file (e.g. personal computer)'
  read TITLE 
}

function addKeyFileToGitHub {
  echo -e '📦  Adding key file to GitHub\n'
  gh ssh-key add ${PUBLIC_KEY} --title "${TITLE}"
}

function listKeysOnGitHub {
  echo -e '📋  Listing all keys on GitHub\n'
  gh ssh-key list
}

function setRemoteUrl {
  URL="git@github.com:jsstrn/dotfiles.git"
  git remote set-url origin ${URL}
}

if ! isGitHubInstalled; then
  echo -e '📦  Installing the GitHub CLI tool\n'
  brew install gh
fi

if ! gh auth status; then
  echo -e '🔓  Login to GitHub\n'
  gh auth login
fi

if [ -f ~/.ssh/id_rsa ]; then
  echo -e '\n🔑  Found existing SSH key\n'
else
  generateKeys && \
  addKeysToAgent && \
  copyKeysToClipboard
fi

promptUserForKeyFileTitle && \
addKeyFileToGitHub
listKeysOnGitHub
setRemoteUrl
