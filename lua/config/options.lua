local g = vim.g
local opt = vim.opt
local prefix = vim.env.XDG_DATA_HOME or vim.expand.fn("~/.local/share")

-----------------------------
-- Nvim UI
-----------------------------
opt.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.colorcolumn = "100"
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.scrolloff = 8
opt.completeopt = "menuone,noinsert,noselect"
--opt.showtabline = 1
--opt.laststatus = 3

-----------------------------
-- TAB / Indentation
-----------------------------
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false


-----------------------------
-- Search
-----------------------------
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false


-----------------------------
-- Other Behaviours
-----------------------------
opt.undodir = { prefix .. "/nvim/file/undo//" }
opt.backupdir = { prefix .. "/nvim/file/backup//" }
opt.directory = { prefix .. "/nvim/file/swap//" }
opt.undofile = true
opt.backup = true
opt.swapfile = true
opt.splitright = true
opt.splitbelow = true
opt.iskeyword:append("-","_")
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
opt.modifiable = true
opt.encoding = "UTF-8"
opt.showmode = false

-----------------------------
-- Globals
-----------------------------
g.mapleader = " "
g.maplocalleader = " "
