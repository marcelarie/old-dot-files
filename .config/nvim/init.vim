"SETTINGS:"
    syntax on
    autocmd FileType vim set foldmethod=indent
    set spelllang=en
    autocmd FileType markdown txt set spell
    set nu
    set relativenumber 
    set noerrorbells
    " Insert space characters for tabs.
    set expandtab
    set smarttab
    set smartindent 
    set tabstop=4 softtabstop=4
    set shiftwidth=4
    " Opening a new file when the current 
    " buffer has unsaved changes causes files 
    " to be hidden instead of closed.
    set hidden
    " No wrapping on the lines if they pass the screen
    " width.
    set nowrap
    " Case sensitive search.
    " :set nosmartcase
    set smartcase
    " disable creating swap files entirely.
    set noswapfile
    set nobackup
    " create a undodir for persisten undo 
    " after vim closes.
    set undodir=~/.vim/undodir
    set undofile
    " incremental search to move the 
    " highlight as you add characters.
    set incsearch
    " 8 lines on top/bottom of cursor when scrolling.
    set scrolloff=8
    set noshowcmd 
    set nohlsearch
    set noruler
    " invert screen splits.
    set splitbelow
    set splitright
    " Vim will wait for 500 ms after each 
    " keystroke for the mappings.
    set timeoutlen=500
    " Vim waits 300 ms after you stop typing
    " before it triggers the plugin.
    set updatetime=300
    set signcolumn=yes
    set colorcolumn=80
    " Turning off compatibility with old vi.
    set nocompatible
    filetype plugin on
    " Two spaces tabs
    " set cmdheight=2
    "2 tabs
    " set tabstop=2
    " set softtabstop=2
    " set shiftwidth=4

"PLUG:"
    call plug#begin('~/.vim/plugged')
    " Plug 'morhetz/gruvbox'
    Plug 'gruvbox-community/gruvbox/'
    Plug 'mhartington/oceanic-next'
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-fugitive'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'stsewd/fzf-checkout.vim'
    Plug 'christoomey/vim-system-copy'
    Plug 'mattn/emmet-vim'
    Plug 'KabbAmine/vCoolor.vim'
    Plug 'theprimeagen/vim-be-good'
    Plug 'itchyny/lightline.vim'
    Plug 'lilydjwg/colorizer'
    Plug 'flazz/vim-colorschemes'
    Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(2) } }
    Plug 'szw/vim-maximizer'
    " Still testing
    Plug 'jiangmiao/auto-pairs'
    Plug 'jfonseca8/vim-bujo'
    Plug 'scrooloose/nerdcommenter'
    Plug 'lervag/vimtex'
    Plug 'dbeniamine/cheat.sh-vim'
    Plug 'tweekmonster/startuptime.vim'
    Plug 'tpope/vim-surround'
    Plug 'vim-scripts/loremipsum'
    Plug 'mbbill/undotree'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
    Plug 'nvim-treesitter/playground'


    
    " MAYBE LATER:
    "Plug 'nvim-telescope/telescope.nvim'
   
    " Forgotten:
    " Plug 'raimondi/delimitmate'
    " Plug 'lifepillar/vim-gruvbox8'
    " Plug 'vimwiki/vimwiki'
    " Plug 'justincampbell/vim-eighties'
    " Plug 'valloric/youcompleteme'
    " Plug 'othree/html5.vim'
    " Plug 'puremourning/vimspector'
    " Plug 'sheerun/vim-polyglot'
    " Plug 'leafgarland/typescript-vim'
    " Plug 'roman/golden-ratio'
    " Plug 'rstacruz/vim-closer'
    " Plug 'hail2u/vim-css3-syntax'
    " Plug 'alvan/vim-closetag'
    " Plug 'jiangmiao/auto-pairs'
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    call plug#end()

"COLORSCHEME:"
    colorscheme gruvbox
    set background=dark
    " if (has("termguicolors"))
        " set termguicolors
    " endif
    
"LIGHTLINE:"
    let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

"FIRENVIM:"
    au BufEnter github.com_*.txt set filetype=markdown
    " let fc = g:firenvim_config['localSettings']
    " let fc['https?://twitter.com/'] = { 'takeover': 'never', 'priority': 1 }

"NERDTREE:"
    " map <C-n> :NERDTreeToggle<CR>
    let NERDTreeShowHidden=1
    let g:typescript_indent_disable = 1


"Auto Resize Windows:"
    " let g:eighties_minimum_width = 125

"Leader Keybindings:"
    let mapleader = " "
    " Open tab
    map <leader>t :tabnew<cr>
    " Split screen
    map <leader>s :split<cr>
    map <leader>vs :vsplit<cr>
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
    " Go to tab by number
    noremap <leader>1 1gt
    noremap <leader>2 2gt
    noremap <leader>3 3gt
    noremap <leader>4 4gt
    noremap <leader>5 5gt
    noremap <leader>6 6gt
    noremap <leader>7 7gt
    noremap <leader>8 8gt
    noremap <leader>9 9gt
    noremap <leader>0 :tablast<cr>
    " Split screen and resize 55
    nnoremap <leader>r :wincmd v<bar> :Ex <bar> :vertical resize 55<CR>
    " Fugitive Keybindings
    nmap <leader>g :G<CR>
    nmap <leader>gh :diffget //3<CR>
    nmap <leader>gl :diffget //2<CR>
    nmap <leader>c :Gcommit<CR> 
    autocmd Filetype fugitive nmap <leader>p :Gpush<bar> :q<CR> 
    nmap <leader>gb :GBranches<CR> 
    nmap <leader>re :Rg<CR> 
    nmap <leader>f :Buffers<CR> 
    nnoremap <C-p> :GFiles<CR>
    " Maximizer
    nnoremap <leader>m :MaximizerToggle!<CR>
    " vim TODO
    nnoremap <leader>T :Todo<CR>
    nmap <Leader>t <Plug>BujoAddnormal
    nmap <Leader>x <Plug>BujoChecknormal


"VCoolor:"
    nnoremap <leader>vc :VCoolor<CR>

"SurroundVim:"
    nmap <leader>lo :norm yssfconsole.log<CR> 

"AutoRun:"
    " AutoRun python files (SPACE+e) 
    " Runs the code.
    " FOR PYTHON:
        " autocmd FileType python map <buffer> <leader>e <esc>:w<CR>:8split term://python3 %<CR>
        " Runs the code but clears the terminal before.
         "autocmd FileType python map <buffer> <leader>E <esc>:w<esc>:!clear<CR>:8split term://python shellescape(@%, 1)<CR>
    " FOR JS:
        autocmd FileType javascript map <buffer> <leader>we <esc>:w<CR>:8split term://node %<CR>
        " Runs just selected code
        " autocmd FileType javascript map <buffer> <leader>c <esc>:w<CR>:8split '<,'>term://node %<CR>

"COC SETTINGS:"
    "COC EXPLORER:"
        :nmap <space>e :CocCommand explorer<CR>
    "CocAuto Install:"
    let g:coc_global_extensions = [
        \ 'coc-tsserver',
        \ 'coc-vimlsp',
        \ 'coc-css',
        \ 'coc-explorer',
        \ 'coc-html',
        \ 'coc-json',
        \ 'coc-lua',
        \ 'coc-sh',
        \ 'coc-rust-analyzer',
        \ 'coc-python',
        \]
    "Coc Def Ref:"
        nmap <leader>gd <Plug>(coc-definition)
        nmap <leader>gr <Plug>(coc-references)

    "CocVim KB:"
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

"FZF:"
    let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
    let $FZF_DEFAULT_OPTS='--reverse'    

"Auto Pairs:"
     let g:AutoPairsFlyMode = 0
     let g:AutoPairsMultilineClose = 0
     au FileType html let b:AutoPairs = AutoPairsDefine({'<!--' : '-->'})
     au FileType css  let b:AutoPairs = AutoPairsDefine({'/*' : '*/'})
     au FileType javascript let b:AutoPairs = AutoPairsDefine({'/*' : '*/'})

"NERDCOMMENTER:"
    " Add spaces after comment delimiters by default
    let g:NERDSpaceDelims = 2

    " Use compact syntax for prettified multi-line comments
    let g:NERDCompactSexyComs = 1

"LaTeX:"
    let g:vimtex_view_method = 'zathura'
    let g:vimtex_compiler_progname = 'latexmk'

"DelimitMate:"
    " let delimitMate_expand_cr = 1
    " let delimitMate_expand_space = 1

"UndoTree:"
    nnoremap <leader>ut :UndotreeToggle<CR>

" Tree-sitter based folding.
    set foldmethod=expr
    set foldexpr=nvim_treesitter#foldexpr()
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
  },
}
EOF



"ABBREVIATIONS:"
    iabbrev log console.log(
    iabbrev $ $(


"Remove Arrows:"
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

"VimRC Keybindings:"

"AUTOCOMMANDS:"
    " augroup coc-explorer
    " au VimEnter * :if bufname()=='' | call execute('CocCommand explorer') | endif
    " augroup END

"BONUS INFO:"
    " With the youcompletme pluggin there always the [ID] to show what its a variable, i change it to [V] 
    " to put the default one change the line with extra_menu_info on the file identifier_completer.py :D



