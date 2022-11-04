local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "typescript",
    "c",
    "python",
    "elm",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    -- "typescript-language-server",
    -- "deno",

    -- shell
    "shfmt",
    "shellcheck",

    -- elm
    "elm-language-server",
    "elm-format",

    -- python
    "pyright",
    "autopep8",
    "blue",
    "pylint",
    "pylama",
    "pydocstyle",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
