#!/bin/sh

for file in $(find * -mindepth 1 -not -wholename "assets/*" -type f -print0 | xargs --null); do
  source_file=$(realpath "$file")
  target_file="$HOME/${file#*/}"
  mkdir --parents "$(dirname "$target_file")"
  ln --force --symbolic "$source_file" "$target_file"
done
