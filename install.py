#!/usr/bin/python3
import subprocess
import os
# Create .vim folder structure
home = os.path.expanduser('~')
subprocess.run(['mkdir', '-p', f'{home}/.vim', f'{home}/.vim/autoload', f'{home}/.vim/backup', f'{home}/.vim/colors', f'{home}/.vim/plugged'])
# Install Plug 
plug_url = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
subprocess.run(['curl', '-fLo', f'{home}/.vim/autoload/plug.vim', '--create-dirs', plug_url])
# Clean out and backup previous dotfiles
subprocess.run(['mv', f'{home}/.bashrc', f'{home}/.bashrc_backup'])
subprocess.run(['mv', f'{home}/.vimrc', f'{home}/.vimrc_backup'])
# Move new dotfiles to home directory
subprocess.run(['cp', f'{home}/dotfiles/.bashrc', f'{home}/dotfiles/.vimrc', home])

