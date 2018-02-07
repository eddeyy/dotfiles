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

" Enable smart tabs set smarttab

" Make a tab equal to 4 spaces
set shiftwidth=4
set tabstop=4

set title
set nobackup
set noswapfile

" invisible characters
set listchars=tab:▸\ ,eol:¬

" let &colorcolumn="80,".join(range(120,999),",")

 
" Quickly save your file.
map <leader>w :w!<cr>

let mapleader=","

" Plugin Section 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
Plugin 'myusuf3/numbers.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'melonmanchan/vim-tmux-resizer'
Plugin 'dhruvasagar/vim-zoom'
Plugin 'vim-scripts/ZoomWin'
Plugin 'majutsushi/tagbar'

" Python
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'nvie/vim-flake8'
Plugin 'tell-k/vim-autopep8'
Plugin 'python-mode/python-mode'

" JSON
Plugin 'elzr/vim-json'

" Color Schemes
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'

call vundle#end()            " required


colorscheme gruvbox
set background=dark

" TagBar Config

" IndentLine Config
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'
filetype plugin indent on    " required

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{syntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_pylint_post_args="--max-line-length=120"

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" youcompleteme
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

" vim-tmux-resize
let g:tmux_resizer_no_mappings = 0
nnoremap <silent> <C-a> :TmuxResizeLeft<cr>
nnoremap <silent> <C-s> :TmuxResizeDown<cr>
nnoremap <silent> <C-w> :TmuxResizeUp<cr>
nnoremap <silent> <C-d> :TmuxResizeRight<cr>

" ultisnips & vim-snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-d>"
let g:UltiSnipsJumpBackwardTrigger="<c-a>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

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

" Enable smart tabs set smarttab

" Make a tab equal to 4 spaces
set shiftwidth=4
set tabstop=4

set title
set nobackup
set noswapfile

" invisible characters
set listchars=tab:▸\ ,eol:¬


highlight ColorColumn ctermbg=239
" let &colorcolumn="80,".join(range(120,999),",")

 
" Quickly save your file.
map <leader>w :w!<cr>

let mapleader=","

" Plugin Section 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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
" Plugin 'scrooloose/nerdcommenter'
Plugin 'myusuf3/numbers.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'melonmanchan/vim-tmux-resizer'
Plugin 'dhruvasagar/vim-zoom'
Plugin 'vim-scripts/ZoomWin'
Plugin 'majutsushi/tagbar'

" Python
" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'
" Plugin 'nvie/vim-flake8'
Plugin 'tell-k/vim-autopep8'
Plugin 'python-mode/python-mode'

" JSON
Plugin 'elzr/vim-json'

" Color Schemes
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'

" Git Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

call vundle#end()            " required

" Pymode
let g:pymode_python = 'python3'

" TagBar Config

" IndentLine Config
let g:indentLine_color_term = 239
let g:indentLine_char = '¦'
filetype plugin indent on    " required

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{syntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_pylint_post_args="--max-line-length=120"

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" youcompleteme
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

" vim-tmux-resize
let g:tmux_resizer_no_mappings = 0
nnoremap <silent> <C-a> :TmuxResizeLeft<cr>
nnoremap <silent> <C-s> :TmuxResizeDown<cr>
nnoremap <silent> <C-w> :TmuxResizeUp<cr>
nnoremap <silent> <C-d> :TmuxResizeRight<cr>

" ultisnips & vim-snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-d>"
let g:UltiSnipsJumpBackwardTrigger="<c-a>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
