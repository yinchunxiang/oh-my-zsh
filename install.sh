#!/bin/bash

cwd=$(dirname $0)
cd ${cwd}
abs_path=$(pwd)
ln -s ${abs_path} ~/.oh-my-zsh
ln -s ${abs_path}/me.zshrc ~/.zshrc


