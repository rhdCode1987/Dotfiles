-- Disable Netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter.blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  { import = "plugins" }
--    { "nvim-tree/nvim-tree.lua",
--    version = "*",
--  lazy = false,
--  dependencies = {
--  "nvim-tree/nvim-web-devicons" },
--  config = function()
--    require("nvim-tree").setup {}
--  end
--}
}, {
	change_detection = {
		notify = false,
	},
})
-- End Lazy.nvim


