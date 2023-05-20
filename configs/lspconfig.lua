local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

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
  "fsautocomplete",
  "lemminx",
  "nxls",
  "csharp_ls",
  "ltex",
}
-- Note: elmls need to run under node@16
-- `brew unlink node`
-- `brew link node@16`

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--
-- lspconfig.pyright.setup { blabla}
