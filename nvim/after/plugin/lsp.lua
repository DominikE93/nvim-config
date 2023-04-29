local lsp = require('lsp-zero').preset({})

lsp.preset("recommended")

lsp.nvim_workspace()

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set('n', ']g', vim.diagnostic.goto_next, { desc = 'Next diagnostic', buffer = bufnr })
    vim.keymap.set('n', '[g', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic', buffer = bufnr })
    vim.keymap.set('n', '<leader>lq', vim.diagnostic.setqflist, { desc = 'Diagnostics', buffer = bufnr })
end)

lsp.setup()

vim.diagnostic.config {
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = true,
  float = {
    source = 'always',
    focusable = false,
    header = '',
  },
}

require("lsp-format").setup {
    yaml = { tab_width = 2 },
}
-- lsp.setup_servers({'tsserver', 'eslint'})

-- require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
--
-- Terraform
require('lspconfig').terraformls.setup{
     on_attach = require("lsp-format").on_attach,
	 filetypes = { '.tf', 'terraform' },
}
--
-- Yaml
require('lspconfig').yamlls.setup {
     on_attach = require("lsp-format").on_attach,
	  settings = {
	    yaml = {
        schemas = {
    	    ['https://raw.githubusercontent.com/ansible/schemas/main/f/ansible.json#/$defs/tasks'] = '{tasks,handlers}/*.{yml,yaml}',
	        ['https://raw.githubusercontent.com/ansible/schemas/main/f/ansible-requirements.json'] = 'requirements.{yml,yaml}',
	        ['https://raw.githubusercontent.com/ansible/schemas/main/f/ansible-meta.json'] = 'meta/main.yml',
	        ['https://raw.githubusercontent.com/ansible/schemas/main/f/ansible-vars.json'] = '{playbooks/vars/,vars/,defaults/,host_vars/,group_vars/}*.{yml,yaml}',
	        ['https://raw.githubusercontent.com/ansible/schemas/main/f/molecule.json'] = 'molecule/*/molecule.{yml,yaml}',
	        ['https://json.schemastore.org/dependabot-2.0'] = '.github/dependabot.{yml,yaml}',
	        ["https://json.schemastore.org/github-workflow"] = ".github/workflows/*.{yml,yaml}",
	        ['https://json.schemastore.org/github-action'] = '.github/**/action.{yml,yaml}',
	        ['https://json.schemastore.org/circleciconfig'] = '.circleci/**/*.{yml,yaml}',
	        ['https://gitlab.com/gitlab-org/gitlab/-/raw/master/app/assets/javascripts/editor/schema/ci.json'] = {
		        'gitlab-ci.{yml,yaml}',
		        'gitlab-ci-templates/**/*.{yml,yaml}',
	        },
	        ['https://json.schemastore.org/chart.json'] = '**/Chart.yaml',
        },
        },
	}
}

lsp.setup()

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
  ["<C-Space>"] = cmp.mapping.complete(),
})

local null_ls = require 'null-ls'

null_ls.setup {
    sources = {
    null_ls.builtins.code_actions.gitsigns,
    null_ls.builtins.code_actions.shellcheck,
    -- null_ls.builtins.diagnostics.commitlint.with {
    --       extra_args = { '-g', vim.fn.expand '~/.config/commitlint/config.js' },
    -- },
    null_ls.builtins.diagnostics.shellcheck,
    -- null_ls.builtins.diagnostics.yamllint,
    null_ls.builtins.formatting.stylua,
  },
}
