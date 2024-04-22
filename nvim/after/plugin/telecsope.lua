local builtin = require 'telescope.builtin'
require'telescope'.load_extension'ghq'
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'find files'})
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'find git files'})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = 'list branches'})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, { desc = 'list commits'})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'live grep'})
vim.keymap.set('n', '<leader>gr', '<cmd>Telescope ghq list<cr>', { desc = 'repository' })
vim.keymap.set('n', '<leader>bb', builtin.buffers, { desc = 'list buffer'})
vim.keymap.set('n', '<leader>ll', builtin.diagnostics, { desc = 'list diagnostics'})
vim.keymap.set('n', '<leader>cp', builtin.registers, { desc = 'registers'})
vim.keymap.set('n', '<leader>fb', builtin.current_buffer_fuzzy_find, { desc = 'fuzzy find buffer'})
vim.keymap.set('n', '<leader>fc', builtin.command_history, { desc = 'nvim command history'})
