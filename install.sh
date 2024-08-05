#!/usr/bin/env bash

cd $HOME

if [[ $(grep "2204" /root/.oldroot/nfs/install/network_config.functions.sh) ]]
then
  echo "noting to do"
else
  if [[ ! -d /root/installimage ]]
  then
    echo "get latest installiamge collection from github"
    git clone https://github.com/hetzneronline/installimage.git
    
  if [[ ! -f /root/bash_aliases ]]
  then 
    echo "fix bash_aliases"
    cp  /root/.oldroot/nfs/bash_aliases /root/bash_aliases
    sed -i  's/\(.*\)\(\/\.oldroot\/nfs\/install\)\(\/installimage\)\(.*\)/\1\3\3\4/' /root/bash_aliases
  fi
  echo "fix /root/.bashrc"
  sed  -i 's/\(source \/root\/\)\(\.oldroot\/nfs\/\)\(bash_aliases\)/\1\3/' /root/.bashrc
  source /root/.bashrc
fi

installimage -t yes