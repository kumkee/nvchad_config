local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

-- if you just want default config for the servers then put them in a table
-- lemminx: xml
-- nxls: json
local servers = {
  "html",
  "cssls",
  "tsserver",
  "clangd",
  "elmls",
  "pyright",
  "fsautocomplete", -- f#
  "lemminx", -- xml
  "jsonls", -- json
  "csharp_ls",
  -- "vale_ls", -- md/txt -- need to initialise with `~/.local/.../bin/vale sync`
  "ltex", -- md, latex, and more
  "nil_ls", -- nix
  "yamlls", -- yaml
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

--
-- lspconfig.pyright.setup { blabla}
