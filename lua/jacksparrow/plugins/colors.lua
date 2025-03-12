return {
  {
    "rose-pine/neovim",
    config = function()
      vim.cmd.colorscheme "rose-pine-moon"
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
      require("rose-pine").setup {
        disable_background = true,
        disable_float_background = true,
        styles = {
          italic = false,
        }
      }
    end
  },
}
