colorscheme murphy
"
"Leader Keybindings:"
    let mapleader = " "
    " Open tab
    map <leader>t :tabnew<cr>
    " Split screen
    map <leader>s :split<cr>
    map <leader>vs :vsplit<cr>
    " Split screen and resize 55
    nnoremap <leader>ss :wincmd v<bar> :Ex <bar> :vertical resize 55<CR>
    " Saves the file.
    map <leader>w :w<cr>
    " Saves the file with force.
    map <leader>W :w!<cr>
    " Quits vim.
    map <leader>q :q<cr>
    " Quits vim with force.
    map <leader>Q :q!<cr>
    " Autoread.(editor)
    map <leader>a :e<cr>
    " Changes windows
    nnoremap <leader>h :wincmd h<CR>
    nnoremap <leader>j :wincmd j<CR>
    nnoremap <leader>k :wincmd k<CR>
    nnoremap <leader>l :wincmd l<CR>
    " Resize vertical windows
    nnoremap <Leader>+ :vertical resize +5<CR>
    nnoremap <Leader>- :vertical resize -5<CR>
    "Source init.vim
    nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
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
