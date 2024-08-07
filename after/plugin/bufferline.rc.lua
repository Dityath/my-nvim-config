local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup {
  options = {
    mode = 'tabs',
    always_show_bufferline = false,
    show_buffer_close_icons = true,
    color_icons = true,
    diagnostics = 'nvim_lsp'
  },
  highlights = {
    separator = {
      guifg = '#babbf1',
      guibg = '#85c1dc'
    },
    separator_selected = {
      guifg = '#e5c890',
    },
    background = {
      guifg = '#51576d',
      guibg = '#292c3c'
    },
    buffer_selected = {
      guifg = '#fdf6e3',
      gui = 'bold'
    },
    fill = {
      guibg = '#303446'
    }
  }
}

vim.api.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferlineCyclePrevious<cr>', {})
