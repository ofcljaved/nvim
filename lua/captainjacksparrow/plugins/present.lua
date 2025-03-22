return {
  {
    'ofcljaved/present',
    config = function()
      local present = require('present')
      vim.keymap.set('n', '<leader>r', function()
        local cwd = vim.uv.cwd();
        local file = vim.fn.findfile('README.md', cwd .. ';', 1)
        if file and file ~= '' then
          local current_buf = vim.api.nvim_get_current_buf()
          local file_buf = vim.fn.bufnr(vim.fn.fnameescape(file))

          if file_buf == -1 then
            vim.cmd('edit ' .. vim.fn.fnameescape(file))
            file_buf = vim.api.nvim_get_current_buf()
          end

          present.start_presentation({ bufnr = file_buf })

          vim.api.nvim_create_autocmd('BufDelete', {
            buffer = file_buf,
            once = true,
            callback = function()
              print('UNloadin')
              vim.api.nvim_command("buffer " .. current_buf)
            end,
          })
        else
          vim.notify('No README.md file found in the current directory', vim.log.levels.INFO, { title = 'present' })
        end
      end)
    end
  }
}
