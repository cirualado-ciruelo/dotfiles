# Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zprofile.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zprofile.pre.zsh"

eval export RSYNC_MODE="dev";

# If `.nvmrc` is found, run `n auto`.
NVMRC_FILE=".nvmrc"
if [[ -a "$NVMRC_FILE" ]]; then
  n auto
fi

# Enable git installed with Homebrew
export PATH=/usr/local/bin/git:$PATH

# Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zprofile.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zprofile.post.zsh"
