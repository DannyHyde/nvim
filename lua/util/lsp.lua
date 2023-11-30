local map = vim.keymap.set

local M = {}

M.on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	map("n", "<leader>fd", "<cmd>Lspsaga finder<CR>", opts)
	map("n", "<leader>gd", "<cmd>Lspsaa peek_definition<CR>", opts)
	map("n", "<leader>gD", "<cmd>Lspsaga goto_definition<CR>", opts)
	map("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
	map("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
	map("n", "<leader>D", "<cmd>Lspsaga show_line_dianostics<CR>", opts)
	map("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
	map("n", "<leader>pd", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
	map("n", "<leader>nd", "<cmd>Lspsaga diagnostic_jummp_next<CR>", opts)
	map("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

	if client.name == "pyright" then
		map("<Leader>oi", "PyrightOrganizeImports", "n", opts)
	end
end

M.diagnostic_signs = { Error = " ", Warn = " ", Hint = "󱧤", Info = "" }

return M
