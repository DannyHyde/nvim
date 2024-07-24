local keymap = vim.keymap.set

local M = {}

M.on_attach = function(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }

  keymap("n", "<leader>fd", "<cmd>Lspsaga finder<CR>", opts)
  keymap("n", "<leader>gD", "<cmd>Lspsaga goto_definition<CR>", opts)
  keymap("n", "<leader>gd", "<cmd>Lspsaga peek_definition<CR>", opts)
  keymap("n", "<leader>gs", "<cmd>vsplit | Lspsaga goto_definition<CR>", opts)
  keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
  keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
  keymap("n", "<leader>D", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
  keymap("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts)
  keymap("n", "<leader>pd", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
  keymap("n", "<leader>nd", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
  keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)

  if client.name == "pyright" then
    keymap("n", "<leader>oi", "<md>PyrightOrganizeImports<CR>", opts)
  end
end

return M
