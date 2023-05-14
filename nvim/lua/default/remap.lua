vim.g.mapleader = ','
vim.keymap.set('n', '<leader>fb', vim.cmd.Ex)
-- convinient system yank or paste
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'yank to clipboard' })
vim.keymap.set('v', '<c-C>', '"+y', { desc = 'yank to clipboard' })
vim.keymap.set('n', '<leader>p', '"+p', { desc = 'paste from clipboard below' })
vim.keymap.set('n', '<leader>P', '"+P', { desc = 'paste from clipboard abow' })
vim.keymap.set('v', '<leader>p', '"+p', { desc = 'paste from clipboard' })
