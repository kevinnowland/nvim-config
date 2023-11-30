local null_ls = require('null-ls')

null_ls.setup({
	sources = {
		-- go
		null_ls.builtins.formatting.gofmt,
		null_ls.builtins.formatting.goimports,
		null_ls.builtins.formatting.goimports_reviser,

		null_ls.builtins.formatting.prettier.with({
			filetypes = {
				"css",
				"graphql",
				"html",
				"javascript",
				"javascriptreact",
				"json",
				"jsonc",
				"typescript",
				"typescriptreact",
				"yaml",
			}
		}),

		-- python
    -- rest is now handled by ruff-lsp
		null_ls.builtins.diagnostics.mypy,

		-- rust
		null_ls.builtins.formatting.rustfmt,

		-- terraform
		null_ls.builtins.diagnostics.terraform_validate,
		null_ls.builtins.formatting.terraform_fmt,
	},
})

-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
vim.o.updatetime = 250
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
