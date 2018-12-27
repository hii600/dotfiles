" language
"language en_US

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
" show matching parenthesis
set showmatch
" clear highlight
nnoremap <ESC><ESC> :nohlsearch<CR>

" enable a menu at the bottom
set wildmenu

" save command history
set history=1000

" mouse settings
set mouse=a
set ttymouse=xterm2
noremap <ScrollWheelUp> 3k
noremap <ScrollWheelDown> 3j

" SpecialKey color
highlight SpecialKey ctermfg=81
" Directory color
highlight Directory ctermfg=159
" pattern match color
highlight Search ctermfg=0
" line number color
highlight LineNr ctermfg=7
" line cursor color
highlight CursorLineNr ctermfg=202
" title color
highlight Title ctermfg=5
" comment color
highlight Comment ctermfg=242
" warning color
highlight WarningMsg ctermfg=1
" DiffAdd color
highlight DiffAdd guibg=DarkBlue
" DiffChange color
highlight DiffChange guibg=DarkMagenta
" DiffDelete color
highlight DiffDelete guibg=LightCyan
" warning color
highlight WarningMsg ctermfg=1
" warning color
highlight WarningMsg ctermfg=1
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

" always show status line
set laststatus=2

" running a python script by F5
map <F5> :!python % <CR>
" python debuggger by F6
map <F6> :!python -m pdb %<CR>

" Escape by jj
inoremap jj <Esc>

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'Yggdroot/indentLine' " highlight indent
Plug 'thinca/vim-visualstar' " highlight search in visual mode
Plug 'cohama/lexima.vim' " auto-close parentethese
Plug 'bronson/vim-trailing-whitespace' " visualise spaces at the end of sentences
Plug 'tomtom/tcomment_vim' " auto commentout
Plug 'vim-airline/vim-airline' " fancy status line
Plug 'vim-airline/vim-airline-themes' " themes for vim-airline
Plug 'tpope/vim-surround' " quoting/parenthesizing made simple
Plug 'mbbill/undotree' " undo history
Plug 'airblade/vim-gitgutter' " show git diff
Plug 'scrooloose/nerdtree' " tree explorer
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'   }
Plug 'junegunn/fzf.vim' " fuzzy finder
call plug#end()

"save the cursor location
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

