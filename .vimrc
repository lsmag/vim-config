execute pathogen#infect()

let $VIMHOME=$HOME."/.vim"
let mapleader=","

set nocompatible    " no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd    " display incomplete commands
filetype plugin indent on    " load file type plugins + indentation

set nowrap    " don't wrap lines
set tabstop=4 shiftwidth=4    " indent = 4 spaces, default python
set softtabstop=4
set shiftround
set expandtab    " spaces, not tabs
set backspace=indent,eol,start    " backspace through everythin in insert mode
let &colorcolumn="80,".join(range(100, 999), ",")
set cursorline    " highlights the current line
set hidden    " to switch buffers without have to save the current
set autochdir

set hlsearch    " highlight matches
set incsearch    " incremental search
set ignorecase    " search is not case-sensitive
set smartcase     " ... unless they contain at least one capital letter
set title    " title of window is the name of file

" no backups, no swaps
set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp

" improve menu
set wildmenu
set wildmode=list:longest

nnoremap ; :

colorscheme desert

cnoremap %% <C-R>=expand('%:h').'/'<cr>

map <leader>w :w<cr>
map <leader>W :wq<cr>

nnoremap <leader><leader> <c-^>

let g:netrw_liststyle=3
let g:netrw_altv=1
let g:netrw_preview=1
set autochdir

let g:ctrlp_show_hidden=1

let g:airline_powerline_fonts=1
set laststatus=2

" easily toggle number+relativenumber for awesome hybrid mode
function! RelNumberToggle()
    if(&relativenumber == 1)
        set nonumber
        set norelativenumber
    else
        set number
        set relativenumber
    endif
endfunc

nnoremap <F3> :call RelNumberToggle()<CR>
