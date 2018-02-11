# Aliases

alias a="atom"
alias s="subl"

alias omz="subl ~/.oh-my-zsh"
alias zshrc="subl ~/.zshrc"

alias weather="curl wttr.in"
alias wtf="fuck"
alias addkey="ssh-add -K ~/.ssh/id_rsa"
alias ip="ipconfig getifaddr en0" # get IP address of your computer

alias chrome="open -a /Applications/Google\ Chrome.app"
alias chrome-in="open -a /Applications/Google\ Chrome.app --args --incognito"
alias ff="open -a /Applications/Firefox.app"
alias firefox="open -a /Applications/Firefox.app"
alias ffde="open -a /Applications/FirefoxDeveloperEdition.app"
alias safari="open -a safari"

# Git aliases
alias g="git"
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
alias gun="git reset --soft HEAD~1" # short for git uncommit
alias gup="gs && gpr && gsp" # short for git update

# Lock the computer by putting the display to sleep immediately
lock() {
  pmset displaysleepnow
}

# Update all brew formulas
beer() {
  brew update
  brew upgrade
  brew cask outdated | xargs brew cask reinstall
  brew cleanup
  brew cask cleanup
}

# Turn on/off your wifi (usage: wifi on)
wifi() {
  case $1 in
    'on' | 'off' )
      networksetup -setairportpower en0 $1
      ;;
    'status' )
      networksetup -getairportnetwork en0
      ;;
    * )
      echo -e "📡  wifi on     - turn on wifi"
      echo -e "📡  wifi off    - turn off wifi"
      echo -e "📡  wifi status - check wifi status"
      ;;
  esac
}

# Check what's running on a specific port number (usage: $ port 8080)
port() {
  lsof -n -i4TCP:$1 | grep LISTEN
}

# Find process id of a given app (usage: $ pid node)
pid() {
  ps ax | grep $1
}

echo -e "📝  Done setting up your aliases"
