require("config.lazy")
--This will allow me to use space as tabs and  use two spaces for each tab
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.number = true -- Enable line numbers
vim.opt.relativenumber = true -- Enable relative line numbers

-- enable clipboard
vim.opt.clipboard = "unnamedplus"

-- Enable concel for obsidian 
vim.opt.conceallevel = 2

