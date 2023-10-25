-- Autoinstall by current path

local lazypath = vim.fn.stdpath("config") .. "/plugins/lazy/lazy.nvim"
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

-- List of plugins
local plugins = {
    "neovim/nvim-lspconfig",     -- LSP support by neovim
    "williamboman/mason-lspconfig.nvim", -- bypass between ↑ and ↓
    "williamboman/mason.nvim",  -- Mason for autoinstalling
    "rstacruz/vim-closer",      -- Autoclosing brackets
    {
    	"L3MON4D3/LuaSnip",
	    version = "v2.*", 
	    build = "make install_jsregexp"},
    "",
    
}

require("lazy").setup(plugins)
require("mason").setup()
require("mason-lspconfig").setup()
