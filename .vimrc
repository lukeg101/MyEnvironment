scriptencoding utf-8
set encoding=utf-8
set nu "show line numbers

execute pathogen#infect()
  " pathogen plugin
syntax on               " enables syntax highlighting
filetype plugin indent on

syntax enable           " enables syntax processing

set list
"set listchars=tab:>-,trail:.    Tab and trailing space markers (ASCII)
set listchars=tab:»·,trail:·    "Tab and trailing space markers (Unicode)
"set listchars=tab:▸,eol:¬
"set listchars=precedes=«,extends=»,tab=▶\ ,eol=↵,trail=·

" sets tabs to be 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

set background=dark     " sets the background colour to be dark
colorscheme solarized   " colourscheme as you'd expect

set mouse=niv           " enables scrollable mouse

set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing

set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set lazyredraw          " redraw only when we need to.
set wildmenu            " visual autocomplete for command menu

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " Ignore case when searching
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR> " clears search highlighting and redraw

set autoread            " Set to auto read when a file is changed from the outside

set ruler               " Always show current position
set laststatus=2        " Always show the status line

" Highlight trailing whitespace and lines longer than 80 columns.
highlight LongLine ctermbg=DarkYellow guibg=DarkYellow
highlight WhitespaceEOL ctermbg=DarkYellow guibg=DarkYellow
if v:version >= 702
   " Lines longer than 80 columns.
   " au BufWinEnter * let w:m0=matchadd('LongLine', '\%>80v.\+', -1)
   " Whitespace at the end of a line. This little dance suppresses
   " whitespace that has just been typed.
   au BufWinEnter * let w:m1=matchadd('WhitespaceEOL', '\s\+$', -1)
   au InsertEnter * call matchdelete(w:m1)
   au InsertEnter * let w:m2=matchadd('WhitespaceEOL', '\s\+\%#\@<!$', -1)
   au InsertLeave * call matchdelete(w:m2)
   au InsertLeave * let w:m1=matchadd('WhitespaceEOL', '\s\+$', -1)
else
   au BufRead,BufNewFile * syntax match LongLine /\%>80v.\+/
   au InsertEnter * syntax match WhitespaceEOL /\s\+\%#\@<!$/
   au InsertLeave * syntax match WhitespaceEOL /\s\+$/
endif

" Enable syntax highlighting for LLVM files. 
augroup filetype
   au! BufRead,BufNewFile *.ll     set filetype=llvm
augroup END

" Enable syntax highlighting for tablegen files.
augroup filetype
   au! BufRead,BufNewFile *.td     set filetype=tablegen
augroup END

" Enable syntax highlighting for reStructuredText files.
augroup filetype
  au! BufRead,BufNewFile *.rst     set filetype=rest
augroup END

