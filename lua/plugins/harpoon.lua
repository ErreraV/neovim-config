return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>A', function()
      harpoon:list():prepend()
    end)
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<leader>e', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<M-0>', function()
      harpoon:list():select(10)
    end)
    for i = 1, 9 do
      vim.keymap.set('n', '<M-' .. i .. '>', function()
        harpoon:list():select(i)
      end)
    end

    vim.keymap.set('n', '<leader><M-0>', function()
      harpoon:list():replace_at(10)
    end)
    for i = 1, 9 do
      vim.keymap.set('n', '<leader><M-' .. i .. '>', function()
        harpoon:list():replace_at(i)
      end)
    end
  end,
}
