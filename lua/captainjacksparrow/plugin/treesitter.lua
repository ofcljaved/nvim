return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',

  opts = {
    ensure_installed = {
      'rust',
      'ron',
      'bash',
      'diff',
      'html',
      'lua',
      'luadoc',
      'javascript',
      'typescript',
      'query',
      'vim',
      'vimdoc',
      'json',
      'regex',
      'toml',
      'yaml',
      'tsx',
    },

    auto_install = true,
    highlight = {
      enable = true,
    },
    indent = { enable = true },
  },
}
