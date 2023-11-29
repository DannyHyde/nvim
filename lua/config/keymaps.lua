local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local api = vim.api

-----------------
-- Nvim Keys
-----------------

-- Better ESC
map('i', 'kj', '<Esc>')

-- clear search
map('n', '<leader>c', ':nohl<CR>')

-- buffers
map('n', '<leader>bn', ':bnext<CR>')
map('n', '<leader>bp', ':bprev<CR>')
map('n', '<leader>s', ':w<CR>')
map('n', '<leader>c', ':bdelete<CR>')

-- window / pane navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', '<leader>sv', ':vsplit<CR>')
map('n', '<leader>sh', ':split<CR>')
--map('n', '<leader>svh', '??   change v split to h
--map('n', '<leader>shv', '??   change h split to v

-- Quit All
map('n', '<leader>q', ':q!<CR>')


-----------------
-- Plugin Keys
-----------------

-- Nvim-tree
map('n', '<leader>e', ':NvimTreeToggle<CR>')

-- Comments
api.nvim_set_keymap('n', '<C-_>', 'gtc', { noremap = false })
api.nvim_set_keymap('v', '<C-_>', 'goc', { noremap = false })
