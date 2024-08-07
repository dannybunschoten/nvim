return {
  'sbdchd/neoformat',
  config = function()
    -- Enable neoformat to try using node executable
    vim.cmd('let g:neoformat_try_node_exe = 1')

    vim.api.nvim_create_autocmd('BufWritePre', {
      pattern = '*.*',
      callback = function()
        vim.cmd('Neoformat')
      end
    })

    -- Set a keymap to run Neoformat with <leader>f
    vim.api.nvim_set_keymap('n', '<leader>f', ':Neoformat<CR>', { noremap = true, silent = true })
  end
}
