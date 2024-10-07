# Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zprofile.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zprofile.pre.zsh"

eval export RSYNC_MODE="dev";

# If `.nvmrc` is found, run `n auto`.
NVMRC_FILE=".nvmrc"
if [[ -a "$NVMRC_FILE" ]]; then
  n auto
fi

eval "$(/opt/homebrew/bin/brew shellenv)"

# Enable git installed with Homebrew
export PATH=/usr/local/bin/git:$PATH

export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"

# Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zprofile.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zprofile.post.zsh"
