local status, lualine = pcall(require, 'lualine')
if (not status) then return end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox-material',
    section_separators = { left = '', right = '' }, 
    component_separators = { left = '', right = ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = { {
      'filename',
      file_status = true, -- displays file status
      path = 0 -- 0 = just filename
    } },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { { 
      'filename',
      file_status = true,
      path = 1 -- 1 = relative path
    } }
  },
  tabline = {},
  extensions = { 'fugitive' }
}
