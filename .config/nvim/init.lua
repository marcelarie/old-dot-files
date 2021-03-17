require('plugins')
require('colorscheme')
require('leader-remaps')
require('settings')
require('aliases')
require('netrw')
require('colorizer')
require('nerd-commenter')
require('autopairs')
require('undo-tree')
require('vimg')

require('treesitter')

require('cheatsh')

require('telescope')
require('telescope-keybindings')

require('lsp')
require('lsp.tsserver')
require('lsp.lua')
require('lsp.lua-formatter')
require('lsp.json')
require('lsp.html')
require('lsp.css')
require('lsp.php')

require('formatting')

vim.cmd([[augroup highlight_yank autocmd!  autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40}) augroup END]]);


