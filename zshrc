# Environmental Variables

set -o vi

export VISUAL=nvim
export EDITOR=nvim
export TERM="tmux-256color"

## change default from cat to bat
export NULLCMD=bat

## Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_IGNORE_SPACE  # Don't save when prefixed with space
setopt HIST_IGNORE_DUPS   # Don't save duplicate lines

# Aliases
alias v=nvim
alias v.='nvim .'
alias ls='ls -lAFh --color=auto'

alias gp='git pull'
alias gs='git status'
alias lg='lazygit'

alias dot='cd $HOME/.dotfiles'
alias sb='cd ~/bujo'

alias code="zed"

## shows the paths in a more clear way
alias trail='<<<${(F)path}'




# go exports

export GOPRIVATE="github.com/TimSchippers/*"

# Python exports
 export PYENV_ROOT="$HOME/.pyenv"
 eval "$(pyenv init -)"
 eval "$(pyenv virtualenv-init -)"
export CONFIGURE_OPTS="--with-openssl=$(brew --prefix openssl)"

# Add locations to $path Array (this forces unique $PATH Locations)

typeset -U path

path=(
"$N_PREFIX/bin"
$path
"$HOME/.dotfiles/scripts"
"$HOME/go/bin"
"$HOME/zig"
 "$PYENV_ROOT/shims:$PATH"
 "$PYENV_ROOT/bin:$PATH"
)
# Sourcing

source "$HOME/.dotfiles/secrets"

# always open tmux
if [ -z $TMUX ]; then; tmux new-session -A -s Home; fi


# Prompt (pure)
fpath+=($HOME/.config/pure)
autoload -U promptinit; promptinit
prompt pure
