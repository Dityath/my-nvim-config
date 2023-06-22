-- nerdtree config

vim.api.nvim_create_autocmd("VimEnter", {
  command = "NERDTree | wincmd p" -- open nerdtree first time entering vim
})

vim.cmd("autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif") -- closing nerdtree when last tab is also close

