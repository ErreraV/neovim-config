-- Highlight, edit, and navigate code
return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = function(_, opts)
    -- Patch LaTeX parser to use a working repo
    local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
    parser_config.latex = {
      install_info = {
        url = 'https://github.com/latex-lsp/tree-sitter-latex',
        files = { 'src/parser.c' },
        branch = 'main',
      },
      filetype = 'tex',
    }

    -- Extend or override default options
    opts.ensure_installed = vim.tbl_extend('force', opts.ensure_installed or {}, {
      'bash',
      'c',
      'cpp',
      'diff',
      'html',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'query',
      'vim',
      'vimdoc',
      'python',
      'latex',
    })

    opts.auto_install = true
    opts.highlight = {
      enable = true,
      additional_vim_regex_highlighting = { 'ruby' },
    }
    opts.indent = {
      enable = true,
      disable = { 'python', 'latex' },
    }
  end,
}
