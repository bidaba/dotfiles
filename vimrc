" Pathogen
execute pathogen#infect()

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
set noshowmode

" Enable undo for line/word deletions in insert mode
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

""" Filetype specials:

" Python: follow Python style guide (PEP8)
au FileType python setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 textwidth=79

" make: use real tabs
au FileType make setlocal noexpandtab

" JSON: use Javascript syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript


""" Extensions
" Install pathogen:
"   mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" Install extensions:
" - cd .vim/bundle
" - git clone git://github.com/altercation/vim-colors-solarized.git
" - git clone https://github.com/scrooloose/syntastic.git
" - git clone https://github.com/bling/vim-airline
" - git clone git://github.com/tpope/vim-fugitive.git
" - git clone git://github.com/tpope/vim-sensible.git
" - execute: :Helptags

" Solarized
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

