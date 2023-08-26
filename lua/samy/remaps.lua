vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

for i,key in ipairs({ '<up>', '<down>', '<left>', '<right>'}) do
	vim.keymap.set({'n', 'i'}, key, '<nop>')
end

