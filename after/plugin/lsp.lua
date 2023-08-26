local lsp = require('lsp-zero').preset({})

lsp.preset({
	name = 'recommended'
})
lsp.ensure_installed({
	-- 'eslint',
	'rust_analyzer'
})
lsp.setup()
