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
set noshowcmd 
set nohlsearch
set noruler
set splitbelow
set splitright
set timeoutlen=500
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'valloric/youcompleteme'
Plug 'KabbAmine/vCoolor.vim'
Plug 'turbio/bracey.vim'
Plug 'theprimeagen/vim-be-good'
Plug 'leafgarland/typescript-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lilydjwg/colorizer'
Plug 'flazz/vim-colorschemes'
call plug#end()

colorscheme gruvbox
set background=dark

"let g:airline_theme='wombat'
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let g:typescript_indent_disable = 1

" Leader Key
let mapleader = " "
" Saves the file.
map <leader>w :w<cr>
" Saves the file with force.
map <leader>W :w!<cr>
" Quits vim.
map <leader>q :q<cr>
" Quits vim with force.
map <leader>Q :q!<cr>
" Split screen and resize 35
nnoremap <leader>r :wincmd v<bar> :Ex <bar> :vertical resize 35<CR>
" Fugitive keybidings
nmap <leader>g :G<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gl :diffget //2<CR>
nmap <leader>c :Gcommit<CR> 
" AutoRun python files (SPACE+e) 
" Runs the code.
autocmd FileType python map <buffer> <leader>e <esc>:w<CR>:8split term://python3 %<CR>
" Runs the code but clears the terminal before.
autocmd FileType python map <buffer> <leader>E <esc>:w<esc>:!clear<CR>:8split term://python shellescape(@%, 1)<CR>

"Coc-Vim KB
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

" Remove newbie crutches in Command Mode
" cnoremap <Down> <Nop>
" cnoremap <Left> <Nop>
" cnoremap <Right> <Nop>
" cnoremap <Up> <Nop>

 " Remove newbie crutches in Insert Mode
" inoremap <Down> <Nop>
" inoremap <Left> <Nop>
" inoremap <Right> <Nop>
" inoremap <Up> <Nop>

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

 "????? This is so YCM and CoC arent called at the same time 
 
" with the youcompletme pluggin there always the [ID] to show what its a variable, i change it to [V] 
" to put the default one change the line with extra_menu_info on the file identifier_completer.py :D
