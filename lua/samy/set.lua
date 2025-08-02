vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.smartindent = false

vim.opt.incsearch = true
vim.opt.hlsearch = true

vim.opt.scrolloff = 8

vim.g.mapleader = " "
vim.opt.colorcolumn = "80"

vim.opt.wrap = false

vim.g.rust_recommended_style = 0

vim.opt.signcolumn = "yes"

-- vim.opt.list = true

-- vim.opt.guicursor = 'n-i:ver25'

vim.filetype.add({
	extension = { 
		mm = 'mm',
		tbl = 'tbl'
	}
})


vim.opt.foldenable = false


vim.opt.clipboard = "unnamedplus"
