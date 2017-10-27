""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  VIMSETTINGS                                 " 
"                            Author: Eduard Leonhardt                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Save 1,000 items in history
set history=1000

" Show the line and column number of the cursor position
set ruler

" Display the incomplete commands in the bottom right-hand side of your screen.  
set showcmd

" Display completion matches on your status line
set wildmenu

" Show a few lines of context around the cursor
set scrolloff=5

" Highlight search matches
set hlsearch

" Enable incremental searching
set incsearch

" Ignore case when searching
set ignorecase

" Override the 'ignorecase' option if the search pattern contains upper case characters.
set smartcase

" Turn on line numbering
set number

" Don't line wrap mid-word.
set lbr

" Copy the indentation from the current line.
set autoindent

" Enable smart autoindenting.
set smartindent

" Use spaces instead of tabs
set expandtab

" Enable smart tabs
set smarttab

" Make a tab equal to 4 spaces
set shiftwidth=4
set tabstop=4

set title
set nobackup
set noswapfile

" Specifiy a color scheme.

colorscheme slate

 
" Quickly save your file.
map <leader>w :w!<cr>

let mapleader=","



" Plugin Section

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Git Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Syntax Plugins
Plugin 'vim-scripts/nginx.vim'
Plugin 'markcornick/vim-vagrant'
Plugin 'scrooloose/syntastic'
Plugin 'ekalinin/dockerfile.vim'

" Convinience
Plugin 'valloric/youcompleteme'
Plugin 'godlygeek/tabular'
Plugin 'yggdroot/indentline'
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plugin 'scrooloose/nerdcommenter'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'myusuf3/numbers.vim'
Plugin 'easymotion/vim-easymotion'


" Color Schemes
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()            " required

filetype plugin indent on    " required
" Specify a directory for plugins

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" YouCompleteMe
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
