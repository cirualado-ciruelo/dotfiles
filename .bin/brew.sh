# Sync dotfiles to home
ln -s .Brewfile "$HOME"

# Install all in ~/.Brewfile
NONINTERACTIVE=1 brew bundle --global
