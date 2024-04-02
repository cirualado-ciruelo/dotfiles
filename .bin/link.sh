SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

ln -fsvn "${SCRIPT_DIR}/.zprofile" "$HOME"
ln -fsvn "${SCRIPT_DIR}/.zshrc" "$HOME"
