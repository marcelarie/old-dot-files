-- Still on research (?)
vim.cmd([[
set spelllang=en,es
set undofile                                                       
set undodir=~/.vim/undodir                                         
set backup                                                             
set backupdir=~/.vim/backup                                            
set writebackup                                                        
set backupcopy=yes                                                     
au BufWritePre * let &bex = '@' . strftime("%F.%H:%M")
set noshowcmd                                                          
set nohlsearch
set incsearch
set nocompatible
set noerrorbells
]])


-- Global options
vim.o.splitbelow=true  -- Horizontal splits will automatically be below
vim.o.splitright=true  -- Vertical splits will automatically be to the right

vim.o.expandtab=true
vim.o.smarttab=true
vim.o.smartindent=true
vim.o.tabstop=4 
vim.o.softtabstop=4
vim.o.shiftwidth=4

vim.o.hidden=true -- Opening a new file when the current buffer has unsaved changes 
                  -- cause files to be hidden instead of closed.  

vim.o.smartcase=true -- Case sensitive search.
vim.o.scrolloff=8 -- 8 lines on top/bottom of cursor when scrolling.
vim.o.timeoutlen=500 -- Vim will wait for 500 ms after keystroke for the mappings.
vim.o.updatetime=300 -- Vim waits 300 ms after you stop before it triggers the plugin.   



-- Buffer local options

-- Window-local options
vim.wo.wrap=false -- Display long lines as just one line
vim.wo.relativenumber=true -- Relative numbers
vim.wo.nu =true -- Show line number
vim.wo.foldnestmax=1 
vim.wo.cursorline=true                          --Enable highlighting of the current line
vim.wo.signcolumn="yes"




