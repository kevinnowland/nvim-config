local null_ls = require('null-ls')

null_ls.setup({
	sources = {
		-- go
		null_ls.builtins.formatting.gofmt,
		null_ls.builtins.formatting.goimports,
		null_ls.builtins.formatting.goimports_reviser,

		-- javascript
		null_ls.builtins.diagnostics.eslint_d,

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
		null_ls.builtins.diagnostics.flake8.with({
			extra_args = {"--max-line-length=88"},
		}),
		null_ls.builtins.diagnostics.mypy,
		null_ls.builtins.formatting.isort,
		null_ls.builtins.formatting.black,

		-- rust
		null_ls.builtins.formatting.rustfmt,

		-- terraform
		null_ls.builtins.diagnostics.terraform_validate,
		null_ls.builtins.formatting.terraform_fmt,
	},
})
