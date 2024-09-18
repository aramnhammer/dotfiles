syntax on
filetype on
autocmd TextChanged,TextChangedI <buffer> silent write

set number relativenumber
set expandtab
set bs=2
set tabstop=4
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set smartindent
set smartcase
set ignorecase
set modeline
set nocompatible
set encoding=utf-8
set hlsearch
set history=700
set tabpagemax=1000
set ruler
set nojoinspaces
set shiftround
set relativenumber
set showcmd             " show (partial) command in status line
set backspace=indent,eol,start  " make backspaces more powerfull

nnoremap <esc> :noh<return><esc>

inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

inoremap (( (<Esc>A)
inoremap [[ [<Esc>A]
inoremap {{ {<Esc>A}


map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
