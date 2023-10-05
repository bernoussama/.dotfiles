local M = {}
-- Your custom mappings

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>s"] = { ":w <CR>", "Save" },
  },
}
return M
