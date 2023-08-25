require('catppuccin').setup({
    flavour = "mocha",
    transparent_background = true,
    integrations = {
        mason=true
    }
})
function ColorMyPencils()
	vim.cmd.colorscheme "catppuccin"

	--vim.api.nvim_set_hl(0,"Normal", {bg = "none"})
	--vim.api.nvim_set_hl(0,"NormalFloat", {bg = "none"})


vim.api.nvim_set_hl(0, "LineNr", {fg = "#ed8796"})
end
ColorMyPencils()

local custom_catppuccin = require'lualine.themes.catppuccin'

-- Change the background of lualine_c section for normal mode
custom_catppuccin.normal.c.bg = '#494d64'
custom_catppuccin.normal.b.bg = '#ed8796'
custom_catppuccin.normal.b.fg = '#1e2030'
custom_catppuccin.normal.a.fg = '#1e2030'
custom_catppuccin.normal.a.bg = '#f5bde6'
require('lualine').setup {
    always_active = true,
    disable_filetypes = {'packer','NVimTree'},
  options = {
    theme = custom_catppuccin,
    component_separators = '|',
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '', right = '' }, left_padding = 2 },
    },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'fileformat' },
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '', left = '' }, right_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
