local map = vim.keymap

local opts = {
  noremap = true,
  silent = true,
}

-- Directory Navigation
--map.set("n", "<leader>m", ":NvimTreeFocus<CR>", {noremap = true, silent = true })
map.set("n", "<leader>e", ":NvimTreeToggle<CR>", {noremap = true, silent = true })

-- Pane Navigation
map.set("n", "<C-h>", "<C-w>h", opts)
map.set("n", "<C-j>", "<C-w>j", opts)
map.set("n", "<C-k>", "<C-w>k", opts)
map.set("n", "<C-l>", "<C-w>l", opts)

-- Pane Management
map.set("n", "<leader>sv", ":vsplit<CR>", opts)
map.set("n", "<leader>sh", ":split<CR>", opts)
map.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts)

-- Commenting
vim.api.nvim_set_keymap("n", "<C-/>", "gcc", { noremap = false})
vim.api.nvim_set_keymap("v", "<C-/>", "gcc", { noremap = false})

-- Indentation
map.set("v", "<", "<gv")
map.set("v", ">", ">gv")
