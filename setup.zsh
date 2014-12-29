#!/usr/bin/env zsh
#
# Setup Pezto
#

setopt EXTENDED_GLOB
for rcfile in $PWD/runcoms/^README.md; do
  ln -sf "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

if (( $+commands[cc] )); then
  cc ${0:A:h}/utils/answerback.c -o ${0:A:h}/bin/answerback.`uname -s`
fi
