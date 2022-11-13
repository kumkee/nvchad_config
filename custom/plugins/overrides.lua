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

    -- clang
    "clang-format",

    -- web dev stuff
    "css-lsp",
    "deno",
    "html-lsp",
    -- "typescript-language-server",

    -- shell
    "shfmt",
    "shellcheck",

    -- elm
    "elm-language-server",
    "elm-format",

    -- python
    "blue",
    "pydocstyle",
    "pylint",
    "pylama",
    "pyright",
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
