# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# Q pre block. Keep at the top of this file.
alias gle="ls -l ${HOME}/Library/Application\ Support/Google/Chrome/Default/Extensions | awk '{print \$9}' | sed 's/^/https:\/\/chrome.google.com\/webstore\/detail\//g' | sed -e '1,2d'"

alias mypub="open https://github.com/nf-matsumura.keys"
alias uc="~/.script/convert_unit.sh"
alias du="npm run docker:up"
alias dd="npm run docker:down"
alias dr="npm run docker:refresh"
alias cdr="cd ~/Works/development/repositories/ && ls"

# Q post block. Keep at the bottom of this file.
export PATH="/usr/local/opt/php@8.2/bin:$PATH"

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
