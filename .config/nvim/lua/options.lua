vim.opt.completeopt = { 'fuzzy', 'menu', 'menuone', 'noselect', 'popup' }
vim.opt.mouse = 'a'

vim.opt.list = true
vim.opt.listchars = "space:•,tab:->"

-- Tab
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- UI config
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Searching
vim.opt.smartcase = true

vim.api.nvim_set_var('loaded_ruby_provider',    0)
vim.api.nvim_set_var('loaded_perl_provider',    0)
vim.api.nvim_set_var('loaded_python3_provider', 0)

vim.opt.rtp:append(vim.fn.stdpath("data") .. "/site")

