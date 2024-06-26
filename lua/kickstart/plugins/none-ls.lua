return {
  'nvimtools/none-ls.nvim',
  optional = true,
  opts = function(_, opts)
    local nls = require 'null-ls'
    opts.sources = vim.list_extend(opts.sources or {}, {
      nls.builtins.diagnostics.cmake_lint,
    })
  end,
}

-- vim: ts=2 sts=2 sw=2 et
