#!/usr/bin/env bash

read -rp 'Would you like to restart the computer now? [y/N] ' response

if [[ $response =~ (yes|y|Y) ]]; then
	sudo shutdown -r now;
fi
