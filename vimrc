call plug#begin('~/.vim/plugged')


Plug 'tpope/vim-sensible'
Plug 'chriskempson/base16-vim'
Plug 'kien/ctrlp.vim'
Plug 'danro/rename.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'thoughtbot/vim-rspec'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

call plug#end()

"""""""""""""""""""""""""""""""
"  General                    "
"""""""""""""""""""""""""""""""
set nocompatible
filetype plugin indent on
"execute pathogen#infect()
set backspace=indent,eol,start
syntax on
set tags=./tags;
set grepprg=ack
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set relativenumber
set spelllang=en_au
set clipboard=unnamed
set modifiable
"let g:rspec_command = "!spring rspec {spec}"
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"""""""""""""""""""""""""""""""
"  Key mappings               "
"""""""""""""""""""""""""""""""
let mapleader = ","

map <Leader>b :Bundle<cr>
map <Leader>db :! rake db:migrate && rake db:test:clone<cr>
map <Leader>dd :set background=dark<cr>
map <Leader>do :tabe todo.md<cr>
map <Leader>g :tabe Gemfile<cr>
map <Leader>ll :set background=light<cr>
map <Leader>o :call RunNearestSpec()<CR>
map <Leader>p :set paste<cr>:r !pbpaste<cr>:set nopaste<cr>
map <Leader>rr :tabe config/routes.rb<cr>
map <Leader>sm :RSmodel<cr>
map <Leader>sc :RScontroller<cr>
map <Leader>sv :RSview<cr>
map <Leader>su :RSunittest<cr>
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>vc :RVcontroller<cr>
map <Leader>vi :tabe ~/.vimrc<cr>
map <Leader>vm :RVmodel<cr>
map <Leader>vp :tabe ~/.vim/plugin/projections.vim<cr>
map <Leader>vr :source $MYVIMRC<cr>
map <Leader>vu :RVunittest<cr>
map <Leader>vv :RVview<cr>
map <Leader>w <C-w>w

imap <c-q> <esc>:q<cr>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"""""""""""""""""""""""""""""""
"  Colours                    "
"""""""""""""""""""""""""""""""

set t_Co=256
let base16colorspace=256
set background=dark
colorscheme base16-ocean

"""""""""""""""""""""""""""""""
"  Saving and Deleting Files  "
"""""""""""""""""""""""""""""""

inoremap <C-W> <esc>:w<cr>

"""""""""""""""""""""""""""""""
"  Movements                  "
"""""""""""""""""""""""""""""""

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
