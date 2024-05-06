#! /usr/bin/env bash
HOME=/home/jeanpierre

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias t=terraform
alias k=kubectl
alias ks='kubectl -n kube-system'
alias ki='kubectl -n istio-system'

export VISUAL=vim
export EDITOR=vim

alias gh='cd /home/jeanpierre/git'
GH=/home/jeanpierre/git

export PATH="$PATH:/usr/local/go/bin"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export GOPATH=$GH

PATH="$PATH:/home/jeanpierre/git/bin"

eval "$(chef shell-init bash)"

# Map mouse buttons
# my_mouse_id=$(xinput | grep -m 1 "USB Optical Mouse" | sed 's/^.*id=\([0-9]*\)[ \t].*$/\1/')
# xinput set-button-map $my_mouse_id 3 2 3 4 5 6 7 1 0 # use thumb for left-click
# xinput set-button-map $my_mouse_id 1 2 3 4 5 6 7 8 9 # default

function ut {
  echo $PWD > $HOME/today.txt
}

function today {
  cd $(cat $HOME/today.txt)
}

function editbash {
  vim "${GH}/mint-scripts/.custom.bashrc"
}

function reloadbash {
  source $HOME/.bashrc
}

function mintscripts {
  cd "${GH}/mint-scripts"
}

function ll {
  ls -lhartF $@
}

function gpush {
  git add . && git commit && git push -u origin main
}

