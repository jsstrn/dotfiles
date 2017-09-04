#!/bin/bash

if [ ! -d /Applications/WorkFlowy.app ]; then
  echo -e "👷‍♀️  Installing WorkFlowy"
	pushd ~/Desktop
	nativefier --name "WorkFlowy" "https://workflowy.com"
	mv WorkFlowy*/WorkFlowy.app /Applications
	rm -rf WorkFlowy*
	popd
	echo -e "🏖  WorkFlowy installed"
else
	echo -e "👍  WorkFlowy already exists"
fi
