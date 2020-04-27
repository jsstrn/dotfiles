#!/usr/bin/env bash

# Upgrade to the latest and greatest version of npm
npm upgrade -g npm

PACKAGES=(
	json-server
	n
	nativefier
	netlify-cli
	npm-check-updates
	serve
)

# Installing NPM packages globally
for package in "${PACKAGES[@]}" ; do
	if ! npm list -g $package ; then
		npm install -g $package
	fi
done
