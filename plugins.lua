local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- Trouble: A pretty list for showing diagnostics, references, ...
  {
    "folke/trouble.nvim",
    cmd = { "Trouble" },
    config = function()
      -- require "nvim-tree/nvim-web-devicons"
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },

  -- Python syntax highlighting
  -- https://jdhao.github.io/2021/07/11/from_vim_plug_to_packer/#issues-related-to-lazy-loaded-remote-plugins
  {
    "numirias/semshi",
    ft = "python",
    config = function()
      vim.cmd [[
      runtime plugin/rplugin.vim
      UpdateRemotePlugins
      ]]
    end,
  },

  -- F# syntax
  { "ionide/Ionide-vim", ft = "fsharp" },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },
}

return plugins
