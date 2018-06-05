" language
language en_US

" encoding
set encoding=utf-8
" set GUI font
set guifont=Bitstream\ Vera\ Sans\ Mono\ 11 

" space number inserted for identification
set shiftwidth=4
" a tab is repleaced as spaces
set expandtab
" space number for one tab
set tabstop=4
" indenting
set cindent
set smartindent

" syntax highlighting
syntax enable
" insert a line along with the cursor
set cursorline
" delete settting
set backspace=eol,start,indent
" not hide the mouse
set nomousehide
" highlight from start of file
autocmd BufEnter * :syntax sync fromstart
" show ruler
set ruler
" show line number
set number
" don't redraw
set lazyredraw
" enable cursor moving beyond lines
set whichwrap+=<,>,h,l
" word wrap without line breaks
set wrap
" highlight search results
set hlsearch
set incsearch
set showmatch
" enable a menu at the bottom
set wildmenu

" save command history
set history=1000

" mouse settings
set mouse=a
set ttymouse=xterm2
noremap <ScrollWheelUp> 3k
noremap <ScrollWheelDown> 3j

" pattern match color
highlight Search ctermfg=Black
" comment color
highlight Comment ctermfg=Darkgray
" line number color
highlight LineNr ctermfg=7
highlight CursorLineNr ctermfg=202
" Statement
highlight Statement ctermfg=208
" Identifier
highlight Identifier cterm=None
" Constant 
highlight Constant ctermfg=1
" Preproc
highlight Preproc ctermfg=5
" Type
highlight Type ctermfg=2

" search by left click
vmap <LeftMouse> <Plug>(visualstar-g*)

" clipboard
set clipboard=unnamed,autoselect

map <F5> :!python %<CR>

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

"save the cursor location
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END
