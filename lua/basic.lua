-- advised by nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin =1

-- leader
vim.g.mapleader = ';'

-- splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

-- visual references
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.cursorline = true
vim.opt.wrap = true

-- diagnostics
-- nnoremap("]d", function() vim.diagnostic.goto_prev() end)
vim.api.nvim_set_keymap('n', '[d', '', { noremap = true, silent = true, callback = function() vim.diagnostic.goto_next() end })
vim.api.nvim_set_keymap('n', ']d', '', { noremap = true, silent = true, callback = function() vim.diagnostic.goto_prev() end })

-- color
--vim.o.termguicolors = true
