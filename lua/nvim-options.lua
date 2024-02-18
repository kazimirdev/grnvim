-- Base:
vim.opt.encoding = 'UTF-8'
vim.opt.swapfile = false
vim.opt.autoindent = smartindent
vim.opt.clipboard = 'unnamedplus'   --copy to system buffer
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'
vim.opt.syntax = 'on'

-- Tabs:
vim.opt.tabstop = 4  	    	-- visual spaces per TAB
vim.opt.softtabstop = 4 	    -- spaces in tab when editing
vim.opt.shiftwidth = 4          -- insert 4 spaces on a tab
vim.opt.expandtab = true        -- tab is space

-- UI:
vim.opt.number = true  		    -- absolute number
vim.opt.relativenumber = true   -- numbers on the left side
vim.opt.splitbelow = true       -- open new vertical split bottom
vim.opt.splitright = true       -- open new horizontal splits right
vim.opt.colorcolumn = "71"      -- PEP8 E501 limit 

-- Searching:
vim.opt.incsearch = true        -- search as characters are entered
vim.opt.hlsearch = false        -- do not highlight matches
vim.opt.ignorecase = true       -- ignore case in searches by default
vim.opt.smartcase = true        -- but make it case sensitive if an uppercase is entered

-- Keymaps
vim.cmd.map("<Tab> :SidebarNvimToggle<CR>")
