# Aliases

alias a.="atom ."
alias s.="subl ."

alias omz="subl ~/.oh-my-zsh"
alias zshrc="subl ~/.zshrc"

alias wtf="fuck"
alias beer="brew update && brew upgrade && brew cleanup && brew cask cleanup"
alias addkey="ssh-add -K ~/.ssh/id_rsa"
alias ip="ipconfig getifaddr en0" # get IP address of your computer

alias chrome="open -a /Applications/Google\ Chrome.app"
alias chrome-in="open -a /Applications/Google\ Chrome.app --args --incognito"
alias ff="open -a /Applications/Firefox.app"
alias firefox="open -a /Applications/Firefox.app"
alias ffde="open -a /Applications/FirefoxDeveloperEdition.app"
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
alias gpom="git push origin master"
alias gpr="git pull --rebase"
alias gs="git stash"
alias gsp="git stash pop"
alias gst="git status"
alias gsps="gs && gpr && gsp"

# Lock the computer by putting the display to sleep immediately
function lock {
  pmset displaysleepnow
}

# Check what's running on a specific port number (usage: $ port 8080)
function port {
  lsof -n -i4TCP:$1 | grep LISTEN
}

echo -e "🚀  Aliases are all set"
