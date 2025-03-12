return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    opts = {},
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    lazy = false,
    config = function()
      require('oil').setup({
        view_options = {
          show_hidden = true,
        }
      })
    end
  }
}
