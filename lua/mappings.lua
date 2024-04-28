require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "v" }, "<leader>y", '"+y', { desc = "yank to clipboard" })
map("v", "<c-C>", '"+y', { desc = "yank to clipboard" })
map("n", "<leader>p", '"+p', { desc = "paste from clipboard below" })
map("n", "<leader>P", '"+P', { desc = "paste from clipboard abow" })
map("v", "<leader>p", '"+p', { desc = "paste from clipboard" })
