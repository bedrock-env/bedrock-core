#!/usr/bin/env zsh

export BEDROCK_DIR=$(dirname "$0")

TERM=screen-256color

if [ -s $BEDROCK_DIR/bundle/load ]; then
  while read -r line || [[ $line ]]; do
    extensions+=("$line")
  done < $BEDROCK_DIR/bundle/load
else
  extensions=()
fi

setopt NULL_GLOB

extension_fpaths=(${^extensions}/**/functions $fpath)
fpath=($extension_fpaths $fpath)

filesToLoad+=($BEDROCK_DIR/core/*.zsh)
filesToLoad+=(${^extensions}/**/{path.zsh,init.zsh,completion.zsh})
files=(${^extensions}/**/*.zsh)
filesToLoad+=(${${${${files:#*/path.zsh}:#*/init.zsh}:#*/install.zsh}#*/update.zsh})

unsetopt NULL_GLOB

for file in $filesToLoad
do
  source $file
done
