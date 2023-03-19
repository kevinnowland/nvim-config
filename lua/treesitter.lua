require'nvim-treesitter.configs'.setup{
	ensure_installed = {
		'css',
		'go',
		'help',
		'html',
		'javascript',
		'lua',
		'markdown',
		'python',
		'query',
		'rust',
		'sql',
		'vim',
	},
	sync_install = false,
	auto_install = true,
	
	highlight = {
		enable = true,

		additional_vim_regex_highlighting= false,
	},
}
