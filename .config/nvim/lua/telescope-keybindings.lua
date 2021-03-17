vim.api.nvim_set_keymap('n', '<Leader>rf', [[<Cmd> lua require('telescope.builtin').find_files()<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>rg', [[<Cmd> lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>r', [[<Cmd> lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>rh', [[<Cmd> lua require('telescope.builtin').help_tags()<cr>]], { noremap = true, silent = true })

