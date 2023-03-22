local lspconfig = require('lspconfig')

-- clients to use
lspconfig.pyright.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.tsserver.setup{}

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
