syntax on

set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set showcmd

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'valloric/youcompleteme'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lilydjwg/colorizer'
call plug#end()

colorscheme gruvbox
set background=dark

"let g:airline_theme='wombat'

map <C-n> :NERDTreeToggle<CR>

let g:typescript_indent_disable = 1

" Leader Key
let mapleader = " "
map <leader>w :w<cr>
map <leader>W :w!<cr>
map <leader>q :q<cr>
map <leader>Q :q!<cr>

" AutoRun python files (SPACE+e) 

autocmd FileType python map <buffer> <leader>e <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>

" Remove newbie crutches in Command Mode
 cnoremap <Down> <Nop>
 cnoremap <Left> <Nop>
 cnoremap <Right> <Nop>
 cnoremap <Up> <Nop>

 " Remove newbie crutches in Insert Mode
 inoremap <Down> <Nop>
 inoremap <Left> <Nop>
 inoremap <Right> <Nop>
 inoremap <Up> <Nop>

 " Remove newbie crutches in Normal Mode
 nnoremap <Down> <Nop>
 nnoremap <Left> <Nop>
 nnoremap <Right> <Nop>
 nnoremap <Up> <Nop>

 " Remove newbie crutches in Visual Mode
 vnoremap <Down> <Nop>
 vnoremap <Left> <Nop>
 vnoremap <Right> <Nop>
 vnoremap <Up> <Nop>

" with the youcompletme pluggin there always the [ID] to show what its a variable, i change it to [V] 
" to put the default one change the line with extra_menu_info on the file identifier_completer.py :D
