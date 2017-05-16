#!/bin/bash

echo 'Setting up login items...'
# Alfred
osascript -e 'tell application "System Events" to make login item at end with properties { name: "Alfred", path: "/Applications/Alfred 3.app", hidden: false }'
# Amphetamine
osascript -e 'tell application "System Events" to make login item at end with properties { name: "Amphetamine", path: "/Applications/Amphetamine.app", hidden: false }'
# Bartender
osascript -e 'tell application "System Events" to make login item at end with properties { name: "Bartender", path: "/Applications/Bartender 2.app", hidden: false }'
# Flux
osascript -e 'tell application "System Events" to make login item at end with properties { name: "Flux", path: "/Applications/Flux.app", hidden: false }'
# Itsycal
osascript -e 'tell application "System Events" to make login item at end with properties { name: "Itsycal", path: "/Applications/Itsycal.app", hidden: false }'
# ShiftIt
osascript -e 'tell application "System Events" to make login item at end with properties { name: "ShiftIt", path: "/Applications/ShiftIt.app", hidden: false }'
# TunnelBear
osascript -e 'tell application "System Events" to make login item at end with properties { name: "TunnelBear", path: "/Applications/TunnelBear.app", hidden: false }'
