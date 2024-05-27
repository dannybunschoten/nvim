-- Global variable to store the terminal buffer number
vim.g.terminal_bufnr = nil

-- Function to toggle terminal
function ToggleTerminal()
  -- If the terminal buffer number is nil or the buffer doesn't exist, create a new terminal
  if vim.g.terminal_bufnr == nil or not vim.api.nvim_buf_is_valid(vim.g.terminal_bufnr) then
    -- Create a new terminal and store its buffer number
    vim.cmd("terminal")
    vim.cmd("startinsert")
    vim.g.terminal_bufnr = vim.fn.bufnr('%')
  else
    -- Get the current buffer number
    local current_bufnr = vim.fn.bufnr('%')

    -- If the current buffer is the terminal, switch to the previous buffer
    if current_bufnr == vim.g.terminal_bufnr then
      vim.cmd("buffer #")
    else
      -- Otherwise, switch to the terminal buffer
      vim.cmd("buffer " .. vim.g.terminal_bufnr)
      vim.cmd("startinsert")
    end
  end
end

