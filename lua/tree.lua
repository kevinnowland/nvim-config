local tree = require('nvim-tree')

tree.setup({
	sort_by = 'case_sensitive',
	renderer = {
		group_empty = true,
		highlight_git = true,
	},
	filters = {
		custom = { '.git' },
	},
	diagnostics = {
		enable = true,
	},
})

vim.keymap.set('n', '<leader>e', '<Cmd>NvimTreeToggle<CR>', {silent=true})
