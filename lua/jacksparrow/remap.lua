local km = vim.keymap

-- km.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Netrw Explorer' })
km.set('n', '<leader>pv', '<cmd>Oil<CR>', { desc = 'File Explorer' })
km.set('n', '<C-k>', '<cmd>cnext<CR>zz')
km.set('n', '<C-j>', '<cmd>cprev<CR>zz')
