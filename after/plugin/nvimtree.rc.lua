local status, nvimtree = pcall(require, 'nvim-tree')
if (not status) then return end

nvimtree.setup {
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true
  }
}

vim.keymap.set('n', '<tt>', '<cmd>NvimTreeToggle<cr>', {})
vim.keymap.set('n', '<ty>', '<cmd>NvimTreeFocus<cr>', {})
vim.keymap.set('n', '<tf>', '<cmd>NvimTreeFindFile<cr>', {})
