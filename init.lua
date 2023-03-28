-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
local enable_providers = {
  "python3",
}

-- Enabling providers
for _, plugin in pairs(enable_providers) do
  local provider = plugin .. "_provider"
  vim.g["loaded_" .. provider] = nil
  vim.cmd("runtime " .. provider)
end

vim.g.python3_host_prog = vim.env.HOME .. "/.local/share/pynvim/bin/python"

-- Disabling mouse
vim.opt.clipboard = ""
vim.g.loaded_clipboard_provider = "1"
vim.opt.mouse = ""
