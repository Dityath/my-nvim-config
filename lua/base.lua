vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10

vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- auto indent and smart indent
vim.opt.ai = true
vim.opt.si = true

-- nowrap line
vim.opt.wrap = false

vim.opt.backspace = 'start,eol,indent'

-- find files and search down into subfolders
vim.opt.path:append { '**' }

-- react and js settings
vim.opt.wildignore:append { '*/node_modules/*' }

-- undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = 'set nopaste'
})

-- add asterisk in block comments
vim.opt.formatoptions:append { 'r' }