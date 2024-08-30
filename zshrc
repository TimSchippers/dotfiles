# Aliases

## shows the paths in a more clear way
alias trail='<<<${(F)path}'


# Variables

## change default from cat to bat
export NULLCMD=bat

## Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Add locations to $path Array (this forces unique $PATH Locations)

typeset -U path

path=(
"$N_PREFIX/bin"
$path
)
