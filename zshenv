# Disable Mac Gatekeeper for homebrew installed applications
export HOMEBREW_CASK_OPTS="--no-quarantine"

# Setup n to always use n as node manager
export N_PREFIX="$HOME/.n"


exists () {
        command -v $1 > /dev/null 2>&1
}

