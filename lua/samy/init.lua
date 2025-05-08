require('samy.set')
require('samy.remaps')
require('samy.lazy')

vim.lsp.enable('zls')


local map = function(m, lhs, rhs)
  local opts = {buffer = bufnr}
  vim.keymap.set(m, lhs, rhs, opts)
end

map('n', 'K', '<cmd>lua vim.lsp.buf.hover({ buffer = \'rounded\' })<cr>')
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
map('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
map('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
map('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')
map({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>')
map('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
map('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')

-- vim.diagnostic.config({
--   severity_sort = true,
--   float = {border = 'rounded'},
-- })
-- 
-- vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
--   vim.lsp.handlers.hover,
--   {border = 'rounded'}
-- )
-- 
-- vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
--   vim.lsp.handlers.signature_help,
--   {border = 'rounded'}
-- )
local hover = vim.lsp.buf.hover
---@diagnostic disable-next-line: duplicate-set-field
vim.lsp.buf.hover = function()
    return hover({
        max_width = 100,
        max_height = 14,
        border = 'rounded',
    })
end


-- vim.opt.completeopt = {'menu', 'menuone', 'noselect', 'noinsert'}
-- vim.opt.shortmess:append('c')
-- 
-- local function tab_complete()
--   if vim.fn.pumvisible() == 1 then
--     -- navigate to next item in completion menu
--     return '<Down>'
--   end
-- 
--   local c = vim.fn.col('.') - 1
--   local is_whitespace = c == 0 or vim.fn.getline('.'):sub(c, c):match('%s')
-- 
--   if is_whitespace then
--     -- insert tab
--     return '<Tab>'
--   end
-- 
--   local lsp_completion = vim.bo.omnifunc == 'v:lua.vim.lsp.omnifunc'
-- 
--   if lsp_completion then
--     -- trigger lsp code completion
--     return '<C-x><C-o>'
--   end
-- 
--   -- suggest words in current buffer
--   return '<C-x><C-n>'
-- end
-- 
-- local function tab_prev()
--   if vim.fn.pumvisible() == 1 then
--     -- navigate to previous item in completion menu
--     return '<Up>'
--   end
-- 
--   -- insert tab
--   return '<Tab>'
-- end
-- 
-- vim.keymap.set('i', '<Tab>', tab_complete, {expr = true})
-- vim.keymap.set('i', '<S-Tab>', tab_prev, {expr = true})





local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  mapping = cmp.mapping.preset.insert({
	['<C-y>'] = cmp.mapping.confirm({select = true}),
	['<Tab>'] = cmp.mapping.select_next_item(),
	['<S-Tab>'] = cmp.mapping.select_prev_item(),
  }),
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end,
  },
})
