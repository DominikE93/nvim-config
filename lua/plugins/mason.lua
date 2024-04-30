return {
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        -- lua
        'lua-language-server',
        'stylua',
        -- web
        'html-lsp',
        'css-lsp',
        'prettier',
        -- terraform
        'trivy',
        'tflint',
        'terraform-ls',
        'markdownlint',
        -- git/github
        'actionlint',
        'commitlint',
        -- yaml
        'yamlfmt',
        'yaml-language-server',
        'yamllint',
        -- helm
        'helm-ls',
        'jsonlint',
        -- python
        'python-lsp-server',
        'black',
        'flake8',
      },
    },
  },
}
