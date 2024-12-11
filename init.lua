-- Load lazy.nvim plugin and all plugins configured with it.  See lua/config/lazy.lua and lua/plugins/*
require("config.lazy")

vim.opt.shiftwidth = 4
vim.opt.number = true
-- vim.opt.clipboard = "unnamedplus"

-- Allow running lua on demand
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>") -- Run current file
vim.keymap.set("n", "<space>x", ":.lua<CR>")                -- Run current line
vim.keymap.set("v", "<space>x", ":lua<CR>")                 -- Run selection

-- Default LSP keybindings. Pulled from 0.11 (can delete once upgraded to 0.11)
-- See https://github.com/neovim/neovim/pull/28650/files#diff-49225a49c226c2f1b36f966d0178c556e204cdc0b660c80db9e4568e03f6ef99
vim.keymap.set('n', 'grn', vim.lsp.buf.rename)
vim.keymap.set({ 'n', 'x' }, 'gra', vim.lsp.buf.code_action)
vim.keymap.set('n', 'grr', vim.lsp.buf.references)
vim.keymap.set('i', '<C-S>', vim.lsp.buf.signature_help)

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
