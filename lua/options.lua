-- Config based on kickstart.nvim
-- Check original repo for more information

-- Enable nerdfont
vim.g.have_nerd_font = true
-- Enable line numbers and relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Hide current mode
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how Neovim will display whitespace
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
vim.opt.confirm = true
