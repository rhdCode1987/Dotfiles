local keymap = vim.keymap

-- general
keymap.set("i", "jk", "<ESC>") -- return to normal mode
keymap.set("n", "<leader>nh",":nohl<CR>") -- clear search highlights
keymap.set("n", "x", '"_x') -- don't copy x to clipboard

-- increment/decrement
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- splits
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split

-- moving between splits
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- Nvim-Tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")

-- Visuial
-- Stay in indent mode
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- move text up and down
-- normal
keymap.set("n", "<S-j>", ":m .+1<CR>==", {noremap = true, silent = true})
keymap.set("n", "<S-k>", ":m .-2<CR>==", {noremap = true, silent = true}) 
-- visual
keymap.set("v", "<S-j>", ":m '>+1<CR>gv=gv", {noremap = true, silent = true})
keymap.set("v", "<S-k>", ":m '<-2<CR>gv=gv", {noremap = true, silent = true})

