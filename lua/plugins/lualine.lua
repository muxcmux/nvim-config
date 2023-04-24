require('lualine').setup({
  extensions = { 'quickfix', 'fugitive', 'neo-tree' },
  options = {
    globalstatus = true,
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = { 'packer' }
    },
  },
  sections = {
    lualine_b = { 'branch', 'diagnostics' },
  },
})
