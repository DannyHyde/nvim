local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local config = function()
    require('telescope').setup({
        defaults = {
            mappings = {
                i = {
                    ['<C-j>'] = 'move_selection_next',
                    ['<C-k>'] = 'move_selection_previous',
                },
            },
        },
        pickers = {
            find_files = {
                theme = 'dropdown',
                previewer = true,
                hidden = true,
            },
            live_grep = {
                theme = 'dropdown',
                previewer = 'false',
            },
            buffers = {
                theme = 'dropdown',
                previewer = 'false',
            },
        },
    })
end

return {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.4',
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    config = config,
    keys = {
        map('n', '<leader>fb', ':Telescope buffers<CR>'),
        map('n', '<leader>ff', ':Telescope find_files<CR>'),
        map('n', '<leader>fg', ':Telescope live_grep<CR>'),
        map('n', '<leader>fk', ':Telescope keymaps<CR>')
    },
}
