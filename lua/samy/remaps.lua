vim.keymap.set('n', '<leader>pV', vim.cmd.Texplore)
vim.keymap.set('n', '<leader>pv', vim.cmd.Explore)
vim.keymap.set('n', '<C-Tab>', 'gt')

for i,key in ipairs({ '<up>', '<down>', '<left>', '<right>'}) do
	vim.keymap.set({'n', 'i'}, key, '<nop>')
end

