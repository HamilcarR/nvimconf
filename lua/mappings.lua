require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>k", vim.diagnostic.open_float, { desc = "CMD Open diagnostic dialog" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
