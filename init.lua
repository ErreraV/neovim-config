-- Config for Neovim
-- Based on Kickstart.nvim
-- Check original repo for more info

-- Set <space> as the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set nvim options
require 'options'

-- Set nvim basic keymaps
require 'keymaps'

-- Set nvim autocommands
require 'autocommands'

-- Bootstrap Lazy
require 'lazy_setup'

-- Initialize plugins
require 'plugins'

-- vim: ts=2 sts=2 sw=2 et
