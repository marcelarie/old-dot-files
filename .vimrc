" Settings
    syntax on
    set relativenumber 
    set noerrorbells
    " 4 tabs
    set tabstop=4 softtabstop=4
    set shiftwidth=4
    "2 tabs
    " set tabstop=2
    " set softtabstop=2
    set expandtab
    set shiftwidth=4
    set smartindent set nu
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
    set spelllang=en
    " Vim Wiki must settings
    set nocompatible
    filetype plugin on
    

" Plug
    call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-fugitive'
    Plug 'alvan/vim-closetag'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'roman/golden-ratio'
    " Plug 'justincampbell/vim-eighties'
    " Plug 'valloric/youcompleteme'
    " Plug 'othree/html5.vim'
    Plug 'christoomey/vim-system-copy'
    Plug 'mattn/emmet-vim'
    Plug 'KabbAmine/vCoolor.vim'
    Plug 'turbio/bracey.vim'
    Plug 'theprimeagen/vim-be-good'
    Plug 'leafgarland/typescript-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'lilydjwg/colorizer'
    Plug 'flazz/vim-colorschemes'
    " Plug 'puremourning/vimspector'
    Plug 'szw/vim-maximizer'

    " Plug 'vimwiki/vimwiki'
    call plug#end()

" Colorscheme
    colorscheme gruvbox
    set background=dark
    "let g:airline_theme='wombat'

" NERDTree
    map <C-n> :NERDTreeToggle<CR>
    let NERDTreeShowHidden=1
    let g:typescript_indent_disable = 1
" Auto Resize Windows
"    let g:eighties_minimum_width = 125

" Leader Keybindings
    let mapleader = " "
    " Saves the file.
    map <leader>w :w<cr>
    " Saves the file with force.
    map <leader>W :w!<cr>
    " Quits vim.
    map <leader>q :q<cr>
    " Quits vim with force.
    map <leader>Q :q!<cr>
    " Changes windows
    nnoremap <leader>l :wincmd l<CR>
    nnoremap <leader>h :wincmd h<CR>
    nnoremap <leader>j :wincmd j<CR>
    nnoremap <leader>k :wincmd k<CR>
    " Split screen and resize 35
    nnoremap <leader>r :wincmd v<bar> :Ex <bar> :vertical resize 35<CR>
    " Fugitive Keybindings
    nmap <leader>g :G<CR>
    nmap <leader>gh :diffget //3<CR>
    nmap <leader>gl :diffget //2<CR>
    nmap <leader>c :Gcommit<CR> 
    nmap <leader>p :Gpush<CR> 
    nnoremap <C-p> :GFiles<CR>
    " Maximizer
    nnoremap <leader>m :MaximizerToggle!<CR>
    " AutoRun python files (SPACE+e) 
    " Runs the code.
    " FOR PYTHON
    " autocmd FileType python map <buffer> <leader>e <esc>:w<CR>:8split term://python3 %<CR>
    " Runs the code but clears the terminal before.
     "autocmd FileType python map <buffer> <leader>E <esc>:w<esc>:!clear<CR>:8split term://python shellescape(@%, 1)<CR>
    " FOR JS
    autocmd FileType javascript map <buffer> <leader>e <esc>:w<CR>:8split term://node %<CR>
    " Runs just selected code
    autocmd FileType javascript map <buffer> <leader>c <esc>:w<CR>:8split '<,'>term://node %<CR>
    " Coc-Def/Ref
    nmap <leader>gd <Plug>(coc-definition)
    nmap <leader>gr <Plug>(coc-references)
"Coc-Vim KB
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
    inoremap <silent><expr> <TAB>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<TAB>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    " <CR>: confirm completion, or insert <CR>
    inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction


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

" BONUS INFO
    " with the youcompletme pluggin there always the [ID] to show what its a variable, i change it to [V] 
    " to put the default one change the line with extra_menu_info on the file identifier_completer.py :D
