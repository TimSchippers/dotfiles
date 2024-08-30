# Aliases

## shows the paths in a more clear way
alias trail='<<<${(F)path}'


# Variables

## change default from cat to bat
export NULLCMD=bat

## Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

## Disable Mac Gatekeeper for homebrew installed applications
export HOMEBREW_CASK_OPTS="--no-quarantine"

