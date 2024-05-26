vim.cmd('let g:neoformat_try_node_exe = 1')
vim.api.nvim_create_autocmd('BufWritePre', { 
	pattern = '*.ts', 
	callback = function()
		vim.cmd('Neoformat') 
	end
})

vim.api.nvim_set_keymap('n', '<leader>f', ':Neoformat<CR>', { noremap = true, silent = true })
