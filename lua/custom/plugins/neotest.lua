return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'mrcjkb/neotest-haskell',
  },

  config = function()
    -- get neotest namespace (api call creates or returns namespace)
    local neotest_ns = vim.api.nvim_create_namespace 'neotest'
    vim.diagnostic.config({
      virtual_text = {
        format = function(diagnostic)
          local message = diagnostic.message:gsub('\n', ' '):gsub('\t', ' '):gsub('%s+', ' '):gsub('^%s+', '')
          return message
        end,
      },
    }, neotest_ns)
    require('neotest').setup {
      -- your neotest config here
      adapters = {
        require 'neotest-haskell' {
          -- Default: Use stack if possible and then try cabal
          build_tools = { 'stack', 'cabal' },
          -- Default: Check for tasty first and then try hspec
          frameworks = { 'tasty', 'hspec', 'sydtest' },
        },
      },
    }
  end,
}

-- vim: ts=2 sts=2 sw=2 et
