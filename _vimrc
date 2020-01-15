set number
set smartcase
inoremap jj <ESC>
set encoding=utf-8
set number
let NERDTreeShowHidden=1
set clipboard=unnamed
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'valloric/youcompleteme'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'posva/vim-vue'
Plug 'mhinz/vim-startify'
Plug 'ajh17/spacegray.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/vim-easy-align'
Plug 'majutsushi/tagbar'
Plug 'tc50cal/vim-terminal'
call plug#end()


set noswapfile
autocmd FileType vue syntax sync fromstart

let g:spacegray_underline_search = 1
colorscheme spacegray

nnoremap <buffer> <F5> :exec '!python' shellescape(@%,1)<CR>

set smartcase

let mapleader = ' '
nnoremap <silent> <Leader>= :exe "vertical resize +10" <CR> 
nnoremap <silent> <Leader>- :exe "vertical resize -10" <CR> 

nnoremap <C-,> :set wrap!<CR>

nmap ga <Plug>(EasyAlign)
map <Leader>f :NERDTreeFind<CR>

set autochdir
map <Leader>t :TerminalVSplit cmd<CR>
map <Leader>c :TagbarToggle<CR>

autocmd GUIEnter * simalt ~x


set tabstop=4
set expandtab


set clipboard+=unnamedplus

call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Commenter
Plug 'scrooloose/nerdcommenter'
" color theme
Plug 'altercation/vim-colors-solarized'
" fuzzy finder
Plug 'kien/ctrlp.vim'
" most recently used
Plug 'shougo/neomru.vim'
" workspace
Plug 'vim-scripts/mru.vim'
" startify
Plug 'mhinz/vim-startify'
call plug#end()


set number
let mapleader="\<Space>"

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <C-.> :NERDTreeFind<CR>
" nnoremap <C-.> :NERDTreeFind<CR>

syntax enable
set background=light
colorscheme solarized

map <C-t> :terminal<CR>



nnoremap <leader>s :SSave<CR>
nnoremap <leader>l :SLoad<CR>

