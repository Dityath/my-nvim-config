local status, markdown = pcall(require, 'markdown')
if (not status) then return end

markdown.setup = function()
  vim.g.mkdp_filetypes = { "markdown" }
end

function OpenMarkdownPreview(url)
  os.execute("firefox --new-window " .. url)
end

vim.g.mkdp_auto_start = 0
vim.g.mkdp_auto_close = 1
vim.g.mkdp_refresh_slow = 0
vim.g.mkdp_command_for_global = 0
vim.g.mkdp_open_to_the_world = 0
vim.g.mkdp_open_ip = ''
vim.g.mkdp_browser = '/opt/Min/min'
vim.g.mkdp_echo_preview_url = 0
vim.g.mkdp_browserfunc = "OpenMarkdownPreview" 
vim.g.mkdp_preview_options = {
  mkit = {},
  katex = {},
  uml = {},
  maid = {},
  disable_sync_scroll = 0,
  sync_scroll_type = 'middle',
  hide_yaml_meta = 1,
  sequence_diagrams = {},
  flowchart_diagrams = {},
  content_editable = false,
  disable_filename = 0,
  toc = {}
}
vim.g.mkdp_markdown_css = ''
vim.g.mkdp_highlight_css = ''
vim.g.mkdp_port = ''
vim.g.mkdp_page_title = '「${name}」'
vim.g.mkdp_theme = 'dark'