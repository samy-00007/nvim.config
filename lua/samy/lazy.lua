-- Install lazy.nvim if not present

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	{
		'nvim-telescope/telescope.nvim', -- tag = '0.1.6',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{ 'projekt0n/github-nvim-theme' },
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	-- {"nvim-treesitter/playground"},
--	{"tpope/vim-fugitive"},
--	{
--		'VonHeikemen/lsp-zero.nvim',
--		branch = 'v2.x',
--		dependencies = {
--			-- LSP Support
--			{'neovim/nvim-lspconfig'},             -- Required
--			{'williamboman/mason.nvim'},           -- Optional
--			{'williamboman/mason-lspconfig.nvim'}, -- Optional
--
--			-- Autocompletion
--			{'hrsh7th/nvim-cmp'},     -- Required
--			{'hrsh7th/cmp-nvim-lsp'}, -- Required
--			{'L3MON4D3/LuaSnip'},     -- Required
--		}
--	},
--	{'simrat39/rust-tools.nvim'},
--	{'alaviss/nim.nvim'},
	-- Autocompletion
	{'hrsh7th/nvim-cmp'},     -- Required
	{'hrsh7th/cmp-nvim-lsp'}, -- Required
	{'L3MON4D3/LuaSnip'},     -- Required
	{ 'lewis6991/gitsigns.nvim', tag = 'v1.0.0' }
})
