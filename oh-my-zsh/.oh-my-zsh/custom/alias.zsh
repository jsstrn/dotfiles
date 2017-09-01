# Aliases

alias omz="subl ~/.oh-my-zsh"
alias zshrc="subl ~/.zshrc"

alias wtf="fuck"
alias addkey="ssh-add -K ~/.ssh/id_rsa"

# Chrome aliases
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"
alias chromium="/Applications/Chromium.app/Contents/MacOS/Chromium"

# Git aliases
alias gap="git add --patch"
alias gcm="git commit -m"
alias gl="git log"
alias gp="git push"
alias gpr="git pull --rebase"

# Check what's running on a specific port number (usage: $ port 8080)
function port() {
  lsof -n -i4TCP:$1 | grep LISTEN
}

function x() {
  kill -9 $1
}
