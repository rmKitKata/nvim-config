vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_compiler_method = "latexmk"

require("kata")
vim.cmd.colorscheme "catppuccin-nvim"

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.colorcolumn = "80"
vim.opt.wrap = false

vim.opt.swapfile = true
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
