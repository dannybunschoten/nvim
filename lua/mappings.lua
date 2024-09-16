require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- the Primeagen
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- absjornHolland
map({ "n", "v" }, "<leader>d", [["_d]])

-- Map the function to the `wqa` command in command-line mode
map("c", "wqa<CR>", function()
  vim.cmd "bufdo if &buftype != 'terminal' | w | endif"
  -- Quit Neovim
  vim.cmd "qa"
end, { desc = "Save all and quit, ignoring terminal buffers" })

-- Autocmd for quickfix window: close it with Enter
vim.api.nvim_create_autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.keymap.set("n", "<CR>", "<CR>:silent! cclose<CR>", { buffer = true, desc = "Close quickfix with Enter" })
  end,
})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- map("i", "<C-K",
