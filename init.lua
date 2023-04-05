-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Install Lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Lazy.nvim setup
require('lazy').setup({
  { import =  'custom.plugins' },
}, {})


-- Plugin configuration
require("custom.config.defaults").setup()
require("custom.config.treesitter").setup()
require("custom.config.keymaps").setup()
require("custom.config.lsp").setup()

