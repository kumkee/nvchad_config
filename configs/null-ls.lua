local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt.with({
    extra_args = { "--no-semicolons", "--single-quote" },
  }), -- choosed deno for ts/js files cuz its very fast!
  b.diagnostics.markuplint, -- html linter
  b.formatting.prettier.with({ filetypes = { "html", "markdown", "css", "json", "yaml" } }), -- so prettier works only on these filetypes

  b.formatting.xmlformat,

  b.diagnostics.yamllint,

  -- Lua
  b.formatting.stylua.with({
    extra_args = { "--config-path=" .. vim.env.HOME .. "/.stylua.toml" },
  }),

  -- cpp
  b.formatting.clang_format,

  -- elm
  b.formatting.elm_format,

  -- python
  b.formatting.blue,
  b.formatting.usort,
  b.diagnostics.pydocstyle.with({
    extra_args = { "--ignore=D203" }, -- "D203 doesn't work with blue/black"
  }),
  b.diagnostics.pylint, -- "pylint need to be installed in the venv to work"
  b.diagnostics.pylama.with({
    extra_args = { "--ignore", "W503,E203" }, -- "E203 doesn't work with blue/black"
  }),

  -- fsharp
  b.formatting.fantomas,

  -- nix
  b.formatting.alejandra,

  -- markdown, text
  -- b.diagnostics.vale
}

null_ls.setup({
  debug = true,
  sources = sources,
})
