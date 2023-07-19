local keymap = vim.keymap

-- do not yank with x
keymap.set('n', 'x', '_x')

-- increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- new tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
keymap.set('n', 'ff', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'fv', ':vsplit<Return><C-w>w', { silent = true })

-- resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- file tab
keymap.set('', 'tt', '<cmd>NvimTreeToggle<cr>')
keymap.set('', 'ty', '<cmd>NvimTreeFocus<cr>')

-- move window
keymap.set('n', '<Space>', '<C-w>w')

-- tmux navigator
keymap.set('n', '<C-h>', '<cmd>TmuxNavigateLeft<cr>')
keymap.set('n', '<C-j>', '<cmd>TmuxNavigateDown<cr>')
keymap.set('n', '<C-k>', '<cmd>TmuxNavigateUp<cr>')
keymap.set('n', '<C-l>', '<cmd>TmuxNavigateRight<cr>')

-- highlight
keymap.set('', 'mh', '<cmd>set hlsearch!<cr>')
