#! /usr/bin/env bash

shopt -s direxpand # stops bash escaping the dollar signs when using autocomplete (i.e. TAB)

alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias gh='cd /home/jeanpierre/git'
GH=/home/jeanpierre/git

#export GOROOT=$(dirname $(which go))
PATH="$PATH:$(which go)"
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

