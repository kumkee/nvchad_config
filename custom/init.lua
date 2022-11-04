local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local enable_providers = {
  "python3",
  -- "node_provider",
  -- and so on
}

-- Enabling providers
for _, plugin in pairs(enable_providers) do
  local provider = plugin .. "_provider"
  vim.g["loaded_" .. provider] = nil
  vim.cmd("runtime " .. provider)
end

-- Specifying python3 provider
vim.g.python3_host_prog = vim.env.HOME .. "/.local/share/nvim/pyenv/bin/python3"

-- Disabling mouse
vim.opt.clipboard = ""
vim.g.loaded_clipboard_provider = "1"
vim.opt.mouse = ""

-- Highlighting column 80 for PEP8
vim.opt.colorcolumn = "80"
