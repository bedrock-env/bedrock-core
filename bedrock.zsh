#!/usr/bin/env zsh

export BEDROCK_DIR=$(dirname "$0")

TERM=screen-256color

while read -r line || [[ $line ]]; do
  extensions+=("$line")
done < $BEDROCK_DIR/bundle

extensionDirs=("${extensions[@]/#/$BEDROCK_DIR/extensions/}")

setopt NULL_GLOB
filesToLoad+=($BEDROCK_DIR/core/*.zsh)
filesToLoad+=(${^extensionDirs}/**/{path.zsh,init.zsh,completion.zsh})
files=(${^extensionDirs}/**/*.zsh)
filesToLoad+=(${${${${files:#*/path.zsh}:#*/init.zsh}:#*/install.zsh}#*/update.zsh})
unsetopt NULL_GLOB

for file in $filesToLoad
do
  source $file
done