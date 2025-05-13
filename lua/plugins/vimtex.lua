return {
  'lervag/vimtex',
  lazy = false, -- load immediately
  config = function()
    vim.g.vimtex_view_method = 'zathura' -- or 'sioyek', 'skim', 'okular', etc
    vim.g.vimtex_compiler_method = 'latexmk' -- auto-compilation
  end,
}
