local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- python
  -- b.formatting.autopep8,
  b.formatting.blue,
  b.formatting.usort, -- required manual installation in .local/share/nvim/mason
  b.diagnostics.pydocstyle,
  b.diagnostics.pylint,
  b.diagnostics.pylama.with {
    extra_args = { "--ignore", "E203" }, -- "E203 doesn't work with blue/black"
  },
  -- b.diagnostics.pyproject_flake8,
  -- b.flake8,

  -- elm
  b.formatting.elm_format,

  -- webdev stuff
  b.formatting.deno_fmt,
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } },

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- cpp
  b.formatting.clang_format,
  -- b.formatting.rustfmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}