set number
set smartcase
inoremap jj <ESC>
set encoding=utf-8
set number
let NERDTreeShowHidden=1
set clipboard=unnamed
" let g:python3_host_prog = 'C:\\Users\\ecq752\\AppData\\Local\\Programs\\Python\\Python37\\python.exe'
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
