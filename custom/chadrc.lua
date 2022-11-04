local M = {}

M.ui = {
  theme_toggle = { "jellybeans", "onedark" },
  theme = "jellybeans",
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
