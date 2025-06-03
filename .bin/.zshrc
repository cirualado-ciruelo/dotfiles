# Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

alias gle="ls -l ${HOME}/Library/Application\ Support/Google/Chrome/Default/Extensions | awk '{print \$9}' | sed 's/^/https:\/\/chrome.google.com\/webstore\/detail\//g' | sed -e '1,2d'"

alias mypub="open https://github.com/nf-matsumura.keys"
alias uc="~/.script/convert_unit.sh"
alias cdr="cd ~/Work/repositories/ && ls"
alias git-sw-w='git config --global user.name "nf-matsumura" && git config user.email "matsumura@newfolk.jp"'
alias git-sw-p='git config --global user.name "cirualado-ciruelo" && git config user.email "cirualado.ciruelo@gmail.com"'

# Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
