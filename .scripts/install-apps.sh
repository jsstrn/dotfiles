#!/usr/local/bin/bash

# Nativefy apps

# Requires Bash version 4

declare -A APPS=(
  ["Gmail"]="https://gmail.com"
  ["ThoughtWorks"]="https://thoughtworks.okta.com"
  ["WorkFlowy"]="https://workflowy.com"
  ["YouTube"]="https://youtube.com"
)

DIR="$(dirname $(pwd))/.icons"

for NAME in "${!APPS[@]}"; do
  if [ ! -d "/Applications/$NAME.app" ]; then
    echo -e "👷‍♀️  Installing $NAME"
  	pushd ~/Desktop
    [[ $NAME = 'ThoughtWorks' ]] && ICON="--icon $DIR/$NAME.icns" || ICON=""
  	nativefier --name $NAME $ICON ${APPS[$NAME]}
  	mv $NAME*/$NAME.app /Applications
  	rm -rf $NAME*
  	popd
  	echo -e "🏖  Yay! $NAME has been installed\n"
  else
  	echo -e "🍾  Nothing to do. $NAME already exists\n"
  fi
done
