return {
  'vyfor/cord.nvim',
  build = './build || .\\build',
  event = 'VeryLazy',
  opts = {
    editor = {
      client = 'neovim',
      tooltip = 'Captain Jack Sparrow\'s Editor',
    },
    text = {
      editing = 'Slowly dying in {} - PRAY!!',
      workspace = 'Maa chudaye VSCODE',
    },
    idle = {
      enable = true,
      text = 'AFK, questioning my career choices...',
      tooltip = '💤 Taking a break',
    },
  },
}
