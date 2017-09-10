# Aliases

alias omz="subl ~/.oh-my-zsh"
alias zshrc="subl ~/.zshrc"

alias wtf="fuck"
alias addkey="ssh-add -K ~/.ssh/id_rsa"
alias ip="ipconfig getifaddr en0" # get IP address of your computer

alias chrome="open -a /Applications/Google\ Chrome.app"
alias chrome-in="open -a /Applications/Google\ Chrome.app --args --incognito"
alias firefox="open -a /Applications/Firefox.app"
alias safari="open -a safari"

# Git aliases
alias gap="git add --patch"
alias gb="git branch"
alias gcm="git commit -m"
alias gco="git checkout"
alias gd="git diff"
alias gf="git fetch"
alias gl="git log"
alias gp="git push"
alias gpr="git pull --rebase"
alias gs="git stash"
alias gsp="git stash pop"
alias gst="git status"

# Check what's running on a specific port number (usage: $ port 8080)
function port() {
  lsof -n -i4TCP:$1 | grep LISTEN
}

function x() {
  kill -9 $1
}
