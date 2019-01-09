" ==============================================
" VIM CONFIGURATION FILE
"
" VimPlug configuration
" READ HERE: https://github.com/junegunn/vim-plug
" :PlugInstall
" fetches https://github.com/junegunn/fzf 

call plug#begin('~/.vim/plugged')
" Plug 'scrooloose/nerdtree',
Plug 'tomasiser/vim-code-dark',
Plug 'junegunn/fzf'
Plug 'vim-airline/vim-airline'
Plug 'ervandew/supertab'
call plug#end()		" Initialize plugin system

" Leader key
let mapleader=","
map <leader>s :source ~/.vimrc<CR>

" colorscheme VisualStudioDark
colorscheme codedark
let g:airline_theme = 'codedark'
set background=dark
set t_Co=256

set fileencodings=ucs-bom,utf-8,sjis
set number		" Show line numbers
set relativenumber	" Relativve numbers
set numberwidth=4
set cursorline
set cursorcolumn
set linebreak		" Break lines at word (requires Wrap lines)
set showbreak=<<<<	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch		" Highlight matching brace
"set visualbell		" Use visual bell (no beeping)
 
set hlsearch		" Highlight all search results

" Powoduje start vim w trybie zmiana, dlaczego?
" noremap <esc> :noh<return><esc> 
" noremap <silent> <Esc> :nohlsearch<Bar>:echo<CR> 

set smartcase		" Enable smart-case search
set ignorecase		" Always case-insensitive
set incsearch		" Searches for strings incrementally
 
set autoindent		" Auto-indent new lines
set shiftwidth=4	" Number of auto-indent spaces
set softtabstop=4	" Number of spaces per Tab
set smartindent		" Enable smart-indent
set smarttab		" Enable smart-tabs
 
"set ruler		" Show row and column ruler information
 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

"map <C-K> :pyf </usr/local/share/clang/>/clang-format.py<cr>
"imap <C-K> <c-o>:pyf </usr/local/share/clang/>clang-format.py<cr>

syntax enable
set nocompatible

set clipboard=unnamedplus
set scrolloff=15

