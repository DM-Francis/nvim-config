return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  enabled = true,
  config = function()
    require("tokyonight").setup({
      styles = {
	comments = { italic = true },
	keywords = { italic = false }
      },
      on_colors = function(colors)
	colors.comment = "#707cb2" -- Slightly lighter than the default
      end
    })

    vim.cmd.colorscheme("tokyonight")
  end
}
