#!/usr/bin/env zsh
#
# Setup Pezto
#

setopt EXTENDED_GLOB
for rcfile in $PWD/runcoms/^README.md(.N); do
  ln -sf "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
