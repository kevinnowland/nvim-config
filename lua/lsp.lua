local lspconfig = require('lspconfig')

-- clients to use
lspconfig.ocamllsp.setup{}
--lspconfig.pyright.setup{}
lspconfig.ruff_lsp.setup{
  on_attach = on_attach,
  init_options = {
    settings = {
      args = {},
    }
  }
}
lspconfig.rust_analyzer.setup{}
lspconfig.tsserver.setup{}
lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "go", "gomod" },
  root_dir = lspconfig.util.root_pattern("go.mod", ".git"),
  settings = {
    gopls = {
      usePlaceholders = false,
      buildFlags =  {"-tags=e2e,contract"},
      gofumpt = true,
      ["local"] = "<repo>",
    }
  },
  init_options = {
    buildFlags =  {"-tags=e2e"},
  }
}
-- key mappings
vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
	callback = function(ev)
		local opts = { buffer = ev.buf }
		vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, opts)
		vim.keymap.set('n', 'gD', vim.lsp.buf.definition, opts)
		vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
		vim.keymap.set('n', '<space>f', function()
			vim.lsp.buf.format { async = true }
		end, opts)
		vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
		vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
		vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
	end,
})

-- format on save
vim.api.nvim_create_autocmd('BufWritePre', {
	buffer = buffer,
	callback = function()
		vim.lsp.buf.format { async = false }
	end,
})

-- format diagnostics
vim.diagnostic.config({
	virtual_text = false,
	underline = true,
	signs = true,
	float = {
		border = 'rounded',
		source = 'always',
		header = '',
		prefix = '',
	},
})
