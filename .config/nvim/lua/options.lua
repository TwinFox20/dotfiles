vim.opt.completeopt = { "fuzzy", "menu", "menuone", "noselect", "popup" }
vim.opt.mouse = "a"
vim.opt.autoread = true
vim.opt.iskeyword:append("-") -- mb
vim.opt.clipboard = "unnamedplus"
vim.opt.selection = "exclusive"

-- Folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99

-- List chars
vim.opt.list = true
vim.opt.listchars = "space:•,tab:->"

-- File recovery
vim.opt.backup = false
vim.opt.swapfile= false
vim.opt.undofile = true

-- Tabs
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
vim.opt.linebreak = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.fillchars = { eob = " " }
vim.opt.wildmode = "longest:full,full"
vim.opt.showmode = false
vim.opt.showcmd = true
vim.opt.showcmdloc = "statusline"
vim.opt.colorcolumn = "120" -- not visible with dank-colors

-- Searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Providers
vim.api.nvim_set_var("loaded_ruby_provider",    0)
vim.api.nvim_set_var("loaded_perl_provider",    0)
vim.api.nvim_set_var("loaded_python3_provider", 0)
