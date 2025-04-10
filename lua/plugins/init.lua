-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  -- Detect tabstop and shiftwidth automatically
  require 'plugins.vim-sleuth',

  -- Adds git related signs to the gutter, as well as utilities for managing changes
  require 'plugins.gitsigns',

  -- Useful plugin to show you pending keybinds.
  require 'plugins.which-key',

  -- Fuzzy Finder (files, lsp, etc)
  require 'plugins.telescope',

  -- LSP Plugins
  require 'plugins.lazydev',

  -- Main LSP Configuration
  require 'plugins.lsp',

  -- Autoformat
  require 'plugins.conform',

  -- Autocomplete
  require 'plugins.nvim-cmp',

  -- Colorscheme
  require 'plugins.colorscheme',

  -- Highlight todo, notes, etc in comments
  require 'plugins.todo-comments',

  -- Collection of various small independent plugins/modules
  require 'plugins.mini',

  -- Highlight, edit, and navigate code
  require 'plugins.treesitter',

  require 'plugins.debug',

  require 'plugins.indent_line',

  require 'plugins.lint',

  require 'plugins.autopairs',

  require 'plugins.neo-tree',

  require 'plugins.alpha',

  require 'plugins.undotree',

  require 'plugins.harpoon',

  require 'plugins.obsidian',
}, {
  ui = {
    require 'plugins.icons',
  },
})
--vim: ts=2 sts=2 sw=2 et
