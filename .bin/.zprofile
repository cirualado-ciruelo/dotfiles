# Set brew
if [ "$(which brew)" == "" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# If `.nvmrc` is found, run `n auto`.
NVMRC_FILE=".nvmrc"
if [[ -a "$NVMRC_FILE" ]]; then
  n auto
fi

# Enable git installed with Homebrew
export PATH=/usr/local/bin/git:$PATH

# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zprofile.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zprofile.pre.zsh"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zprofile.post.zsh" ]] && builtin source "$HOME/.fig/shell/zprofile.post.zsh"
