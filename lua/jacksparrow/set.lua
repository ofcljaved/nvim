local global = vim.g

global.mapleader = ' '
global.maplocalleader = ' '

-- To Disable netrw banner --
-- global.netrw_browse_split = 0
-- global.netrw_banner = 0
-- global.netrw_winsize = 25

local set = vim.opt

set.guicursor = ''

set.number = true
set.relativenumber = true

set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.expandtab = true

set.smartindent = true

set.wrap = false

set.termguicolors = true

set.scrolloff = 8

set.swapfile = false
set.backup = false
set.undodir = os.getenv 'HOME' .. '/.vim/undodir'
set.undofile = true

set.hlsearch = false
set.incsearch = true

set.signcolumn = 'yes'
set.isfname:append '@-@'
set.updatetime = 100
