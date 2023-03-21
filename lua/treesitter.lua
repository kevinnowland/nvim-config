require'nvim-treesitter.configs'.setup{
	ensure_installed = {
		'bash',
		'c_sharp',
		'css',
		'dockerfile',
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
		'toml',
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
