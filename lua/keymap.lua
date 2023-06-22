-- nerdtree config

vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTree<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-t>', ':NERDTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeFind<CR>', {noremap = true})

-- tmux navigator

vim.api.nvim_set_keymap('n', '<C-h>', ':TmuxNavigateLeft<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-l>', ':TmuxNavigateRight<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-j>', ':TmuxNavigateDown<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-k>', ':TmuxNavigateUp<CR>', {noremap = true})

-- tab and stuffs

vim.api.nvim_set_keymap('n', '<C-w>1', ':-tabnext<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-w>2', ':+tabnext<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-w>3', ':$tabnew<CR>', {noremap = true})

-- telescope

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
