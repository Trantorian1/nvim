vim.loader.enable()

local cmd = vim.cmd
local opt = vim.opt

vim.g.mapleader = " "
vim.g.mapLocalLeader = " "

opt.path = vim.o.path .. "**"

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.lazyredraw = true
opt.showmatch = true -- Highlight matching parentheses, etc
opt.incsearch = true
opt.hlsearch = true

opt.spell = true
opt.spelllang = "en"

opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.foldenable = true
opt.undofile = true
opt.splitright = true
opt.splitbelow = true
opt.cmdheight = 0

opt.colorcolumn = "80,100,120"

print("Hello World")
