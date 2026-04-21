vim.opt.completeopt = { 'fuzzy', 'menu', 'menuone', 'noselect', 'popup' }
vim.opt.mouse = 'a'

vim.opt.backup = false
vim.opt.list = true
vim.opt.listchars = "space:•,tab:->"

-- Tab
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

-- UI config
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.fillchars = { eob = ' ' }

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Color column
vim.opt.colorcolumn = "120" -- dose not work with dank-colors now

-- Providers
vim.api.nvim_set_var('loaded_ruby_provider',    0)
vim.api.nvim_set_var('loaded_perl_provider',    0)
vim.api.nvim_set_var('loaded_python3_provider', 0)
