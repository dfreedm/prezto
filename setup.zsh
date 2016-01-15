#!/usr/bin/env zsh
#
# Setup Pezto
#

setopt EXTENDED_GLOB
for rcfile in $PWD/runcoms/^README.md; do
  ln -sfn "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
