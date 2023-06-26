local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
  higlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'tsx',
    'lua',
    'json',
    'css',
    'vue',
    'markdown',
    'prisma',
    'scss',
    'go',
    'rust',
    'php',
    'markdown_inline'
  },
  autotag = {
    enable = true,
  }
}
