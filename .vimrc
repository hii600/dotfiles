set softtabstop=4
set shiftwidth=4
set backspace=2
set expandtab
set tabstop=4
syntax enable
set cursorline

set cindent
set nomousehide
set guifont=Bitstream\ Vera\ Sans\ Mono\ 11 
autocmd BufEnter * :syntax sync fromstart
let loaded_matchparen=0
set smartindent

set encoding=utf-8

"show ruler
set ruler
"show line number
set number
"dont redraw
set lz

set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set wrap

""highlight search results
set hlsearch
set incsearch
set showmatch

" save command history
set history=1000

set wildmenu

" color settings
" pattern match color
highlight Search ctermfg=Black
" comment color
highlight Comment ctermfg=Darkgray
" line number color
highlight LineNr ctermfg=208
highlight CursorLineNr ctermfg=202
" Statement
highlight Statement ctermfg=208
" Type
highlight Type ctermfg=2

" Neobundle settings
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
  set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/

  " Required:
  call neobundle#begin(expand('~/.vim/bundle/'))

  " Let NeoBundle manage NeoBundle
  " Required:
  NeoBundleFetch 'Shougo/neobundle.vim'

  " My Bundles here:
  " Refer to |:NeoBundle-examples|.
  " Note: You don't set neobundle setting in .gvimrc!
  NeoBundle 'thinca/vim-themis'
  NeoBundle 'thinca/vim-visualstar'
"  NeoBundle 'davidhalter/jedi-vim'
"  NeoBundle 'scrooloose/syntastic'
  NeoBundle 'cohama/lexima.vim'
  NeoBundle 'Yggdroot/indentLine'
  NeoBundle 'Shougo/unite.vim'
  call neobundle#end()

    " Required:
    filetype plugin indent on

    " If there are uninstalled bundles found on startup,
    " this will conveniently prompt you to install them.
    NeoBundleCheck


vmap <LeftMouse> <Plug>(visualstar-g*)

"save the cursor location
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END
