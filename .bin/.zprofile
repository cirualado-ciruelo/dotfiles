eval export RSYNC_MODE="dev";

# If `.nvmrc` is found, run `n auto`.
NVMRC_FILE=".nvmrc"
if [[ -a "$NVMRC_FILE" ]]; then
  n auto
fi

# Enable git installed with Homebrew
export PATH=/usr/local/bin/git:$PATH
