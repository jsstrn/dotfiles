#!/usr/bin/env bash

# Upgrade to the latest and greatest version of NPM
npm upgrade -g npm

PACKAGES=(
	create-react-app
	http-server
	json-server
	nativefier
	npm-check-updates
)

# Installing NPM packages globally
for package in "${PACKAGES[@]}" ; do
	if ! npm list -g $package ; then
		npm install -g $package
	fi
done
