-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Disable Netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- IMPORTS
require("core.options")
require("lazyinit")
require("core.colorscheme")
require("core.keymaps")
require("core.lsp")
