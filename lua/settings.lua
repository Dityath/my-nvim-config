-- basic settings

vim.cmd('syntax enable')

-- tab indent and number

local indent = 2

vim.opt.tabstop = indent
vim.opt.shiftwidth = indent
vim.opt.softtabstop = indent
vim.opt.smartindent = true
vim.opt.expandtab = true

vim.opt.number = true

vim.opt.hlsearch = true

-- case

vim.opt.ignorecase = true
vim.opt.smartcase = true

-- mouse support

vim.opt.mouse = 'a'

-- clipboard support

vim.cmd('set clipboard+=unnamedplus')
vim.cmd('filetype plugin indent on')


