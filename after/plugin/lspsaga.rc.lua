local status, saga = pcall(require, 'lspsaga')
if (not status) then return end

saga.setup {
  server_filetype_map = {}
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'ge', '<cmd>Lspsaga diagnostic_jump_next<cr>', opts)
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<cr>', opts)
vim.keymap.set('n', 'gd', '<cmd>Lspsaga lsp_finder<cr>', opts)
vim.keymap.set('n', 'gk', '<cmd>Lspsaga signature_help<cr>', opts)
vim.keymap.set('n', 'gp', '<cmd>Lspsaga preview_definition<cr>', opts)
vim.keymap.set('n', 'gr', '<cmd>Lspsaga rename<cr>', opts)
