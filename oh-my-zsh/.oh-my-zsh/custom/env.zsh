# Stash environment variables here

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Golang
export GOPATH=$HOME/Developer/go
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$(go env GOPATH)/bin

echo -e "🌳  Done setting up your environment variables"
