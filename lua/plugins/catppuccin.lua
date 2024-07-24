return {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    enabled = true,
    priority = 1000,
    config = function()
        vim.opt.termguicolors = true

        local catppuccin = require("catppuccin")

        catppuccin.setup({
            flavour = "mocha",
            term_colors = true,
            styles = {
                conditionals = {},
                functions = {"italic"},
                types = {"bold"}
            },

            color_overrides = {
                mocha = {
                    base = "#000000", -- background
                }
            },

            integrations = {
            --    barbar = true,
            --    cmp = true,
            --    gitsigns = true,
            --    native_lsp = {enabled = true},
                nvimtree = true,
                telescope = true,
            --    treesitter = true,
            --    treesitter_context = true
            }
        })

        vim.cmd.colorscheme("catppuccin")
    end
}
