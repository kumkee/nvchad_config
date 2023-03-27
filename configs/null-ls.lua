local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- elm
  b.formatting.elm_format,

  -- python
  b.formatting.blue,
  b.formatting.usort,
  b.diagnostics.pydocstyle.with {
    extra_args = { "--ignore=D203" }, -- "D203 doesn't work with blue/black"
  },
  b.diagnostics.pylint,
  b.diagnostics.pylama.with {
    extra_args = { "--ignore", "W503,E203" }, -- "E203 doesn't work with blue/black"
  },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
