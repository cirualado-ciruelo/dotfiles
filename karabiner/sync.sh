SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
KARABINER_SET_DIR="${HOME}/.config/karabiner"

ln -fsvn "${SCRIPT_DIR}/karabiner.json" "${KARABINER_SET_DIR}/karabiner.json"
ln -fsvn "${SCRIPT_DIR}/assets" "${KARABINER_SET_DIR}/assets"
