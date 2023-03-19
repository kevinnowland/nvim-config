require('basic')
require('plugins')
require('treesitter')
require('lsp')
require('cmp_config')
require('lint_config')

-- color
--[[
vim.g.nord_disable_background = true
vim.g.nord_contrast = true
vim.g.nord_italic = false
vim.cmd[[colorscheme nord]]
--]]

--[[
vim.g.starry_disable_background = true
vim.g.starry_italic_comments = true
vim.cmd[[colorscheme darksolar]]
--]]

require('rose-pine').setup({
	disable_background = true,
	disable_italics = true,
})
vim.cmd('colorscheme rose-pine')

--[[
require('nightfox').setup({
	options = {
		transparent = true,
	},
})
vim.cmd[[colorscheme terafox]]
--]]

--[[
vim.g.everforest_transparent_background = true
vim.cmd[[colorscheme everforest]]
--]]
