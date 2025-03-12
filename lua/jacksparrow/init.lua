require("jacksparrow.set")
require("jacksparrow.remap")
require("jacksparrow.lazy")

local km = vim.keymap;

km.set("n", "<leader><leader>x", "<cmd>source %<CR>")
km.set("n", "<leader>x", ":.lua<CR>")
km.set("v", "<leader>x", ":lua<CR>")

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end
})
