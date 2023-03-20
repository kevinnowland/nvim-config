require'nvim-treesitter.configs'.setup{
	ensure_installed = {
		'bash',
		'c_sharp',
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
		'terraform',
		'vim',
		'yaml',
	},
	sync_install = false,
	auto_install = true,
	
	highlight = {
		enable = true,

		additional_vim_regex_highlighting= false,
	},
}
