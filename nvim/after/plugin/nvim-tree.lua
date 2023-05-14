require('nvim-tree').setup {
  disable_netrw = false,
  update_cwd = true,
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
      quit_on_open = true,
    },
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = 'none',
    special_files = {},
    root_folder_modifier = ':p:~',
    icons = {
      glyphs = {
        default = '',
        symlink = '',
      },
      show = {
        git = true,
        folder = true,
        file = true,
        folder_arrow = true,
      },
    },
  },
}

vim.keymap.set('n', '<leader>tt', '<cmd>NvimTreeToggle<cr>', { desc = 'file tree' })
