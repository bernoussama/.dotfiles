-- keymaps
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { silent = true })
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")

-- sets
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoread = true

vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.o.autochdir = true

-- vscode format i.e json files
vim.g.vscode_snippets_path = "~/.config/Code/User/snippets/"
-- snipmate format
vim.g.snipmate_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snippets"
