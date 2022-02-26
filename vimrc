call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'kien/ctrlp.vim'
Plug 'danro/rename.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-fugitive'
Plug 'thoughtbot/vim-rspec'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'chriskempson/base16-vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'preservim/nerdtree'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

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
set clipboard+=unnamed
set modifiable
"let g:rspec_command = "!spring rspec {spec}"
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
"suppress garbage characters on launching vim
set t_RV=

"""""""""""""""""""""""""""""""
"  File browser               "
"""""""""""""""""""""""""""""""
let g:netrw_browse_split = 2 " Automatically open new files in a vertical split
let g:netrw_banner = 0
let g:netrw_winsize = 20

"""""""""""""""""""""""""""""""
"  Key mappings               "
"""""""""""""""""""""""""""""""
let mapleader = ","

map <Leader>b :Bundle<cr>
map <Leader>db :! rake db:migrate && rake db:test:clone<cr>
map <Leader>dd :set background=dark<cr>
map <Leader>do :tabe todo.md<cr>
map <Leader>f :Lexplore<cr>
map <Leader>g :tabe Gemfile<cr>
map <Leader>ll :set background=light<cr>
map <Leader>o :call RunNearestSpec()<CR>
map <Leader>p :set paste<cr>:r !pbpaste<cr>:set nopaste<cr>
map <Leader>r :!ruby %<cr>
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
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

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

"""""""""""""""""""""""""""""""
"  CtrlP                      "
"""""""""""""""""""""""""""""""

set wildignore=*/tmp/*,*/node_modules/*


"""""""""""""""""""""""""""""""
" SnipMate                    "
"""""""""""""""""""""""""""""""
let g:snipMate = { 'snippet_version' : 1 }
