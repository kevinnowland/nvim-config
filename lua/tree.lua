local tree = require('nvim-tree')

tree.setup({
	sort_by = 'case_sensitive',
	renderer = {
		group_empty = true
	},
	filters = {
		custom = { '.git' },
	},
})

vim.keymap.set('n', '<leader>e', '<Cmd>NvimTreeToggle<CR>', {silent=true})
