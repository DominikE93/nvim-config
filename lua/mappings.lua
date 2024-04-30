require 'nvchad.mappings'

-- add yours here

local map = vim.keymap.set

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('i', 'jk', '<ESC>')

map({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'yank to clipboard' })
map('v', '<c-C>', '"+y', { desc = 'yank to clipboard' })
map('n', '<leader>p', '"+p', { desc = 'paste from clipboard below' })
map('n', '<leader>P', '"+P', { desc = 'paste from clipboard abow' })
map('v', '<leader>p', '"+p', { desc = 'paste from clipboard' })

-- Telescope
local builtin = require 'telescope.builtin'
vim.keymap.set('n', '<leader>fc', builtin.command_history, { desc = 'nvim command history' })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'find git files' })

-- Trouble
map('n', '<leader>dl', function()
  require('trouble').toggle()
end, { desc = 'open diagnostics' })
map('n', '<leader>dn', function()
  require('trouble').next { skip_groups = true, jump = true }
end, { desc = 'Next diagnostic' })
map('n', '<leader>dp', function()
  require('trouble').previous { skip_groups = true, jump = true }
end, { desc = 'previous diagnostic' })
