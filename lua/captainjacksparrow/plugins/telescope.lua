return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
      require("telescope").setup {
        extensions = {
          fzf = {}
        }
      }

      require('telescope').load_extension('fzf')

      local builtin = require('telescope.builtin')
      local km = vim.keymap
      km.set('n', '<leader>sh', builtin.help_tags, { desc = 'Search Help' })
      km.set('n', '<leader>sk', builtin.keymaps, { desc = 'Search Keymaps' })
      km.set('n', '<leader>pf', builtin.find_files, { desc = 'Search Files' })
      km.set('n', '<C-p>', builtin.git_files, { desc = 'Search Git Files' })
      km.set('n', '<leader>pws', function()
        local word = vim.fn.expand '<cword>'
        builtin.grep_string { search = word }
      end)
      km.set('n', '<leader>pWs', function()
        local word = vim.fn.expand '<cWORD>'
        builtin.grep_string { search = word }
      end)
      km.set('n', '<leader>ps', function()
        builtin.grep_string { search = vim.fn.input 'Grep > ' }
      end)
      km.set('n', '<leader>ss', builtin.builtin, { desc = 'Search Select Telescope' })
      km.set('n', '<leader>sd', builtin.diagnostics, { desc = 'Search Diagnostics' })
      km.set('n', '<leader>en', function()
        builtin.find_files {
          cwd = vim.fn.stdpath("config")
        }
      end)
      require("captainjacksparrow.telescope.livegrep").setup()
    end
  }
}
