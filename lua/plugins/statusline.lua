return {
  -- Pick one of the plugins below to be enabled
  {
    'nvim-lualine/lualine.nvim',
    name = 'lualine',
    enabled = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() require('lualine').setup() end
  },
  {
    'echasnovski/mini.statusline',
    name = 'mini.statusline',
    version = '*',
    enabled = true,
    config = function() require('mini.statusline').setup() end
  }
}
