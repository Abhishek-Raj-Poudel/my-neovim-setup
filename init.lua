require("config.lazy")

-- Set tab options to use spaces instead of tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Enable line numbers
vim.opt.number = true

-- Enable relative line numbers for better navigation
vim.opt.relativenumber = true

-- Enable clipboard integration with the system clipboard
vim.opt.clipboard = "unnamedplus"

-- Configure conceal level for Obsidian syntax highlighting
vim.opt.conceallevel = 2

-- Enable case-insensitive searching, but make it case-sensitive if uppercase letters are present
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- gen.nvim command
vim.keymap.set({ 'n', 'v' }, '<leader>]', ':Gen<CR>')
