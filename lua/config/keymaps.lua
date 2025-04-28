local map = vim.keymap

local opts = { noremap = true, silent = true }

-- Directory Navigation
map.set("n", "<leader>m", ":NvimTreeFocus<CR>", opts) -- Focus on NvimTree
map.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts) -- Toggle NvimTree

-- Pane Navigation
map.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
map.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
map.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
map.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

-- Window Management
map.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically
map.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally
map.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Pane Size (Max/Min)

-- Indenting
map.set("v", "<", "<gv")
map.set("v", ">", ">gv")

-- Commenting
vim.api.nvim_set_keymap("n", "<C-/>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-/>", "gcc", { noremap = false })
