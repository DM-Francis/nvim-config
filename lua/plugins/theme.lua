-- Hello this is a comment
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("tokyonight").setup({
      styles = {
	comments = { italic = false },
	keywords = { italic = false }
      },
      on_colors = function(colors)
	colors.comment = "#707cb2" -- Slightly lighter than the default
      end
    })

    vim.cmd.colorscheme("tokyonight-moon")
  end
}
