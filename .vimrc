" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

set relativenumber

let g:lightline = {
      \ 'colorscheme':'nord',
      \ }

autocmd ColorScheme * highlight Visual term=reverse cterm=reverse guibg=Grey

highlight FoldColumn ctermbg=black

highlight LineNr ctermbg=black

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Set left gutter for more central text
set foldcolumn=1

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=15

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Disable show mode (lightline)  
set noshowmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

set wildoptions="fuzzy"

" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Clear status line when vimrc is reloaded.
set statusline=

" " Status line left side.
set statusline+=\ %F\ %Y\ %M
" " Use a divider to separate the left side from the right side.
set statusline+=%=

" " Status line right side.
set statusline+=\ row:\ %l\ col:\ %c\ ascii:\ %b\ 

" " Show the status on the second to last line.
set laststatus=2

"------------------------ Remaps ---------------------------


" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

nnoremap ff :edit **/
" Press jj to exit
inoremap jj <Esc>

"------------------------- Plugins -------------------------
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
call plug#end()

colorscheme nord
