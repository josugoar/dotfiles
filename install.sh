#!/bin/sh

for source_file in $(find * -mindepth 1 -not -name dotfiles.gif -type f -printf "%P\0" | xargs --null); do
  target_file="$HOME/$source_file"
  mkdir --parents "$(dirname "$target_file")"
  ln --force --symbolic "$source_file" "$target_file"
done
