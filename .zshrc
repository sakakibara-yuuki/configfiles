# -*- coding: utf-8 -*-
# 上の設定はpython2がある場合に必要
# export PYTHONIOENCODING=utf-8

# juliaのパスを通す
# export PATH=$PATH":/Applications/Julia-1.0.app/Contents/Resources/julia/bin/julia"



# opencv系
# export LDFLAGS="-L/usr/local/opt/opencv@3/lib"
# export CPPFLAGS="-I/usr/local/opt/opencv@3/include"
# export PKG_CONFIG_PATH="/usr/local/opt/opencv@3/lib/pkgconfig:$PATH"
# export PATH="/usr/local/opt/opencv@3/bin:$PATH"
# sbin
# export PATH="/usr/local/sbin:$PATH"
# man
# export MANPATH="$MANPATH:/usr/local/Cellar"
# export MANPATH=/usr/local/man:/usr/local/share/man:/usr/share/man:/usr/man
# export CPLUS_INCLUDE_PATH="/usr/local/include/eigen3"

# editorをvimにする
export EDITOR=vim

# 英語表記にする
export LANG=en_US.UTF-8
export LC_TIME="en_US.UTF-8"

# labに入る!
alias ssh_lab='ssh -p 51000 sakakibara@133.38.238.102'
alias ssh_view='ssh -p 51000 sakakibara@133.38.238.102 -L 5901:localhost:5900'


# powerlineで色を表示させるための設定
alias ls='ls -G'
alias ctags='/usr/local/bin/ctags'
alias sleepon='sudo pmset -a disablesleep 0'
alias sleepoff='sudo pmset -a disablesleep 1'
alias inkscape='/Applications/Inkscape.app/Contents/MacOS/inkscape'
alias plantuml='plantuml -config ~/.plantuml/config.txt'


# alias python = '/usr/local/Cellar/python@3.10/'
# alias python = '/usr/local/Cellar/python@3.10/3.10.4/Python'

# powerlineの設定
# function powerline_precmd() {
#     PS1="$(powerline-shell --shell zsh $?)"
# }

# function install_powerline_precmd() {
#   for s in "${precmd_functions[@]}"; do
#     if [ "$s" = "powerline_precmd" ]; then
#       return
#     fi
#   done
#   precmd_functions+=(powerline_precmd)
# }

# if [ "$TERM" != "linux" ]; then
#     install_powerline_precmd
# fi

# starshipの設定 powerlineと競合するからどっちかにしてね
eval "$(starship init zsh)"
if [[ $(command -v exa) ]]; then
  alias e='exa --icons --git'
  alias l=e
  alias ls=e
  alias ea='exa -a --icons --git'
  alias la=ea
  alias ee='exa -aahl --icons --git'
  alias ll=ee
  alias et='exa -T -L 3 -a -I "node_modules|.git|.cache" --icons'
  alias lt=et
  alias eta='exa -T -a -I "node_modules|.git|.cache" --color=always --icons | less -r'
  alias lta=eta
  alias l='clear && ls'
fi

# 自前のzshの設定だよこれもpowerlineとstarshipと競合するからどれかにしてね
# export PROMPT="%~"$'\n'"%B%F{49}➜ %f%b"

# 初回シェル時のみ tmux実行
# if [ $SHLVL = 1 ]; then
#   tmux
# fi

# export PATH="$PATH:/Applications/Julia-1.6.app/Contents/Resources/julia/bin"
# export PATH="$PATH:/Users/sakakibara/Library/Python/3.8/bin"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/llvm/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"
export CPLUS_INCLUDE_PATH=/usr/local/include
export PYTHONDONTWRITEBYTECODE=1
export PATH=$HOME/.nodebrew/current/bin:$PATH
export INSTALL="/usr/local"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

