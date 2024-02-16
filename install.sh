#!/bin/bash

dotfiles_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" #for absolute path of the directory

# List of dotfiles to symlink
dotfiles=(
    .bashrc
    .tmux.conf
    .vimrc
)
#dotfiles arry and create symbolic links
for file in "${dotfiles[@]}"; do #create a symbolic link
    ln -sf "$dotfiles_dir/$file" "$HOME/$file" # $dotfiles_dir/$file for source file and $HOME/file 
# -s option creates a symbolic link  and -f force the creation of the link
done

echo "Dotfiles are installed successfully."

