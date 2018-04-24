set nu "show line numbers

execute pathogen#infect() 
syntax on  " enables syntax highlighting
filetype plugin indent on

syntax enable "enables syntax processing

set background=dark "sets the background colour to be dark
colorscheme solarized

set mouse=niv  "enables scrollable mouse

set tabstop=4 " number of visual spaces per TAB
set softtabstop=4    " number of spaces in tab when editing

set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set lazyredraw          " redraw only when we need to.

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase " Ignore case when searching
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> " clears search highlighting and redraw

set autoread " Set to auto read when a file is changed from the outside

set ruler "Always show current position
set laststatus=2 " Always show the status line

let g:zsh_path_completion_suppress_mappings = 1

