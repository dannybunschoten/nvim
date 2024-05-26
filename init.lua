local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
  end
end

ensure_packer()

require("danny.packer")
require("danny.remap")
require("danny.set")
require("danny.packer")
require("danny.lsp")
require("danny.colors")
require("danny.harpoon")
require("danny.fugutive")
require("danny.prettier")
require("danny.undoTree")
require("danny.telescope")
require("danny.treesitter")
