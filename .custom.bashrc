#! /usr/bin/env bash
HOME=/home/jeanpierre

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

export VISUAL=vim
export EDITOR=vim

alias gh='cd /home/jeanpierre/git'
GH=/home/jeanpierre/git

PATH="$PATH:/usr/local/go/bin"
export GOPATH=$GH


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

