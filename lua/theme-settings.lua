-- Set theme
vim.g.tokyonight_transparent = true
vim.cmd([[colorscheme tokyonight]])

-- Use theme in statusbar
require('lualine').setup {
  options = {
    theme = 'tokyonight'
  }
}
