" This is Vim, not vi.
set nocompatible 

" Syntaxhighlighting
syntax on
filetype plugin indent on

" Whitespace stuff
set expandtab 
set shiftwidth=4 
set tabstop=4 
set softtabstop=4
set smartindent
set smarttab

" Show trailing spaces and highlight hard tabs
set list listchars=tab:»·,trail:·

" Search stuff
set nowrapscan
set hlsearch
set incsearch

" GUI stuff
set number
set ruler

" Filetype specials:

" Python: follow Python style guide (PEP8)
au FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 textwidth=79

" make: use real tabs
au FileType make setlocal noexpandtab

" JSON: use Javascript syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" Enable undo for line/word deletions in insert mode
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

