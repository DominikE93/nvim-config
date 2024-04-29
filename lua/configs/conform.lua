local options = {
  formatters_by_ft = {
    lua = { 'stylua' },
    terraform = { 'terrform_fmt' },
    json = { 'jq' },
    -- TODO: Muss im Team geklärt werden
    -- yaml = { "yamlfmt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require('conform').setup(options)
