local km = vim.keymap
--[[
  NO MEANS NO
  NO MORE ARROW KEYS
]]
km.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
km.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
km.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
km.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- km.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Netrw Explorer' })
km.set('n', '<leader>pv', '<cmd>Oil<CR>', { desc = 'File Explorer' })
km.set('n', '<C-k>', '<cmd>cnext<CR>zz')
km.set('n', '<C-j>', '<cmd>cprev<CR>zz')

km.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected line down' })
km.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected line up' })

km.set('n', 'J', 'mzJ`z', { desc = 'Move below line into current line' })
km.set('n', '<C-d>', '<C-d>zz', { desc = 'Navigate down while cursor stay in middle' })
km.set('n', '<C-u>', '<C-u>zz', { desc = 'Navigate up while cursor stay in middle' })
km.set('n', 'n', 'nzzzv', { desc = 'Find next word while being in center' })
km.set('n', 'N', 'Nzzzv', { desc = 'Find previous word while being in center' })

-- greatest remap ever
km.set('x', '<leader>p', '"_dP', { desc = 'Paste content without overriding the yank buffer' })

-- next greatest remap ever : asbjornHaland
km.set('n', '<leader>y', '"+y', { desc = 'yanked in clipboard in normal mode' })
km.set('v', '<leader>y', '"+y', { desc = 'yanked in clipboard in visual mode' })
km.set('n', '<leader>Y', '"+Y', { desc = 'yanked single line in clipboard in normal mode' })

km.set('n', '<leader>d', '"_d', { desc = 'delete line without overriding the yank buffer' })
km.set('v', '<leader>d', '"_d', { desc = 'delete line without overriding the yank buffer in visual mode' })

-- This is going to get me cancelled
km.set('i', '<C-c>', '<Esc>', { desc = 'to exit the insert mode' })

km.set('n', 'Q', '<nop>', { desc = 'Override repeating macro' })
km.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>', { desc = 'New tmux session from neovim' })
km.set('n', '<leader>f', function()
  vim.lsp.buf.format()
end, { desc = 'Format code with lsp' })

km.set('n', '<C-k>', '<cmd>cnext<CR>zz', { desc = 'Navigate to next error' })
km.set('n', '<C-j>', '<cmd>cprev<CR>zz', { desc = 'Navigate to previous error' })
km.set('n', '<leader>k', '<cmd>lnext<CR>zz', { desc = 'Navigate to next error in current window' })
km.set('n', '<leader>j', '<cmd>lprev<CR>zz', { desc = 'Navigate to previous error in current window' })

km.set('n', '<leader>s', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>', { desc = 'Replace word under the cursor' })
km.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'open diagnostic [q]uickfix list' })
