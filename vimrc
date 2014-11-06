"""""""""""""""""""""""""""""""
"  General                    "
"""""""""""""""""""""""""""""""
set nocompatible
set hidden
execute pathogen#infect()
set backspace=indent,eol,start
syntax on
filetype plugin indent on
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
let g:rspec_command = "!spring rspec {spec}"
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

"""""""""""""""""""""""""""""""
"  Key mappings               "
"""""""""""""""""""""""""""""""

let mapleader = ","

map <Leader>a :AutoSaveToggle<cr>
map <Leader>b :Bundle<cr>
map <Leader>cc :tabe ~/.vim/colors/chrislawrence.vim<cr>
map <Leader>cj :Rjmodel
map <Leader>db :! rake db:migrate && rake db:test:clone<cr>
map <Leader>dd :set background=dark<cr>
map <Leader>e :call RunCurrentSpecFile()<CR>
map <Leader>fa :sp spec/factories.rb<cr>
map <Leader>g zg ]s
map <Leader>gg :tabe Gemfile<cr>
map <Leader>h :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
map <Leader>i mmgg=G`m<cr>
map <Leader>lb :%s/\*\*\*\*/* * * */g<cr>
map <Leader>ll :set background=light<cr>
map <Leader>md :tabe ~/.vim/ftplugin/markdown.vim<cr>
map <Leader>mi :%s/^ \{2}/    /g<cr>
map <Leader>o :call RunNearestSpec()<CR>
map <Leader>p :set paste<cr>:r !pbpaste<cr>:set nopaste<cr>
map <Leader>rr :tabe config/routes.rb<cr>
map <Leader>rm :call delete(expand('%'))<cr>:bdelete!<cr>
map <Leader>su :RSunittest<cr>
map <Leader>t :CtrlP<cr>
map <Leader>V :VimroomToggle<cr>
map <Leader>vc :RVcontroller<cr>
map <Leader>vi :tabe ~/.vimrc<cr>
map <Leader>vm :RVmodel<cr>
map <Leader>vp :tabe ~/.vim/plugin/projections.vim<cr>
map <Leader>vr :source $MYVIMRC<cr>
map <Leader>vu :RVunittest<cr>
map <Leader>vv :RVview<cr>
map <Leader>w <C-w>w

imap <c-q> <esc>:q<cr>

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
