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

" Set cursor line
set cursorline

" load filetype-specific indent files
filetype indent on

" Make a tab equal to 4 spaces
set shiftwidth=4
set tabstop=4

set title
set nobackup
set noswapfile

" invisible characters
set listchars=tab:▸\ ,eol:¬
set list

let &colorcolumn="120"

" Quickly save your file.
map <leader>w :w!<cr>

let mapleader=","

set termguicolors

" Searching
set incsearch
set hlsearch

"Mappings
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>u :MundoToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>t :TagbarToggle<CR>

"Mappings Edit
nnoremap <leader>ev :vsp ~/.config/nvim/init.vim<CR>
nnoremap <leader>et :vsp ~/.tmux.conf<CR>

" set the runtime path to include Vundle and initialize
call plug#begin('~/.vim/plugged')

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git Plugins
Plug 'tpope/vim-fugitive'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}

" Syntax Plugins
Plug 'vim-scripts/nginx.vim'
Plug 'markcornick/vim-vagrant'
Plug 'scrooloose/syntastic'
Plug 'ekalinin/dockerfile.vim'

" Convinience
Plug 'valloric/youcompleteme'
Plug 'godlygeek/tabular'
Plug 'yggdroot/indentline'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'myusuf3/numbers.vim'
Plug 'easymotion/vim-easymotion'
Plug 'melonmanchan/vim-tmux-resizer'
Plug 'dhruvasagar/vim-zoom'
Plug 'vim-scripts/ZoomWin'
Plug 'majutsushi/tagbar'
Plug 'simnalamburt/vim-mundo'

" Python
" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'
" Plugin 'nvie/vim-flake8'
Plug 'tell-k/vim-autopep8'
" Plug 'python-mode/python-mode'

" JSON
Plug 'elzr/vim-json'

" Color Schemes
Plug 'morhetz/gruvbox'
Plug 'iCyMind/NeoSolarized'

call plug#end()


" IndentLine Config
let g:indentLine_color_gui = '#4c4c4b'
let g:indentLine_fileTypeExclude=['tex', 'json']
" let g:indentLine_setColors= 1

"GRUVBOX
colorscheme gruvbox
set background=dark

" Solarized
" colorscheme NeoSolarized
" set background=dark
" let g:neosolarized_contrast = "normal"
" let g:neosolarized_visibility = "normal"
" let g:neosolarized_vertSplitBgTrans = 1
" let g:neosolarized_bold = 1
" let g:neosolarized_underline = 1
" let g:neosolarized_italic = 1


" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_python_pylint_post_args="--max-line-length=120"



" youcompleteme
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'

if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

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
