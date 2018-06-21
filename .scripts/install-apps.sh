#!/usr/local/bin/bash

set -e

declare -A APPS=(
  ["DevDocs"]="https://devdocs.io/"
  ["Gmail"]="https://gmail.com"
  ["Medium"]="https://medium.com/"
  ["WorkFlowy"]="https://workflowy.com"
  ["YouTube"]="https://youtube.com"
)

for NAME in "${!APPS[@]}"; do
  if [ ! -d "/Applications/$NAME.app" ]; then
    echo -e "👷‍♀️  Installing $NAME"
  	pushd ~/Desktop
  	nativefier --name $NAME ${APPS[$NAME]}
  	mv $NAME*/$NAME.app /Applications
  	rm -rf $NAME*
  	popd
  	echo -e "🏖  Yay! $NAME has been installed\n"
  else
  	echo -e "🍾  Nothing to do. $NAME already exists\n"
  fi
done
