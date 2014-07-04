" Tom Wiltzius vimrc

" Basics
set nocompatible    " Get good defaults

" Input
set mouse=a         " Want mouse
set backspace=2

" Syntax
filetype on
filetype plugin on
syntax enable       " 'enable' keeps color settings while 'on' overwrites them
match ErrorMsg '\s\+$'  " show trailing whitespace as a syntax error
set showmatch       " show matching brackets

" Autocomplete
set wildmenu        " enable tab-completion in the command line
  " completion mode: first tab expand longest prefix and list options,
  " second tab show all matches
set wildmode=longest:list,full

" Line numbers
set number

" Indentation
filetype indent off " Disable filetype-based indentation rules so VIM doesn't overwrite what's below
filetype plugin indent off
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Search/replace
set ignorecase      " case insensitive search
set incsearch       " highlight results as they're found
set hlsearch        " highlight all search matches (only after search is executed)

" Misc HUD features
set showcmd         " Display helpful command/selection info
set ruler           " Display cursor position within document and line

