local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "python",
    "elm",
    "nix",
    "vimdoc",
    "haskell",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    --- "lua-language-server",
    --- "stylua",

    -- clang
    "clang-format",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    -- "deno",
    "prettier",
    "markuplint",

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
    "usort",

    -- fsharp
    "fsautocomplete",
    "fantomas",

    -- xml
    -- "lemminx",
    "xmlformatter",

    -- json
    "json-lsp",

    -- yaml
    "yamlls",
    "yamllint",

    -- text, markdown
    "ltex-ls",
    -- "vale",
    -- "vale-ls",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- shell stuff
    "shfmt",
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
