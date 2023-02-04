import subprocess
# Create .vim folder structure
subprocess.run(['mkdir', '-p', '~/.vim', '~/.vim/autoload', '~/.vim/backup', '~/.vim/colors', '~/.vim/plugged'])
# Install Plug 
plug_url = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
subprocess.run(['curl', '-fLo', '~/.vim/autoload/plug.vim', '--create-dirs', plug_url])
# Clean out previous dotfiles
subprocess.run(['rm', '~/.bashrc', '~/.vimrc'])
# Move new dotfiles to home directory
subprocess.run(['mv', '~/dotfiles/.bashrc', '~/dotfiles/.vimrc', '~'])
# Source the new dotfiles
subprocess.run(['source', '~/.bashrc'])

