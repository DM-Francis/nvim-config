return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- This is for lua so that the proper vim objects are available to the lsp
      "folke/lazydev.nvim",
      ft = "lua", -- only load on lua files
      opts = {
	library = {
	  -- See the configuration section for more details
	  -- Load luvit types when the `vim.uv` word is found
	  { path = "${3rd}/luv/library", words = { "vim%.uv" } },
	},
      },
    },
    config = function()
      -- Run :help lspconfig-all to see available configurations and their instructions
      -- A good idea is to install any LSP into ~/.local/share/$lsp-name and add a symlink so the executable is available in ~/.local/bin
      require("lspconfig").lua_ls.setup({}) -- Installed in ~/.local/share/lua-lsp, linked in ~/.local/bin
      require("lspconfig").clangd.setup({}) -- Installed via `sudo apt install clangd`
    end
  }
}


-- Tip:  run :help ins-completion to see the manual on using auto-completion once an lsp is setup
-- Also: :help lsp
