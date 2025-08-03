#!/bin/sh

for package in */; do
  for source_file in $(find "$package" -mindepth 1 -type f -print0 | xargs --null); do
    target_file="$HOME/${source_file#"$package"}"
    mkdir --parents "$(dirname "$target_file")"
    ln --force --symbolic "$source_file" "$target_file"
  done
done
