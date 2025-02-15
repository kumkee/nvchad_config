local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

-- if you just want default config for the servers then put them in a table
-- lemminx: xml
-- nxls: json
local servers = {
  "html",
  "cssls",
  "ts_ls",
  "clangd",
  "elmls",
  "pyright",
  "fsautocomplete", -- f#
  "lemminx", -- xml
  "jsonls", -- json
  "csharp_ls",
  "hls", -- Haskell
  -- "vale_ls", -- md/txt -- need to initialise with `~/.local/.../bin/vale sync`
  -- "ltex", -- added below in a separate section
  "nil_ls", -- nix
  "yamlls", -- yaml
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

-- ltex: special treatment - md, latex, and more
lspconfig["ltex"].setup({
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    ltex = {
      language = "en-GB",
    },
  },
})

--
-- lspconfig.pyright.setup { blabla}
