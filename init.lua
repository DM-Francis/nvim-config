require("config.lazy")

vim.opt.shiftwidth = 4
vim.opt.number = true

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>") -- Run current file
vim.keymap.set("n", "<space>x", ":.lua<CR>")                -- Run current line
vim.keymap.set("v", "<space>x", ":lua<CR>")                 -- Run selection

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
