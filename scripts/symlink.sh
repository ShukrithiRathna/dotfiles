#!/bin/bash

create_symlink () {
  if [ -h ~/${1} ]; then
    # Existing symlink 
    echo "Removing existing symlink: ${dest}"
    dest="${HOME}/${1}"
    rm ${dest} 
 fi
  ln -sv ~/dotfiles/${1} ~   
}

create_symlink .bashrc 
create_symlink .bash_aliases 
create_symlink .gitconfig 

  