local config = function()
  require("nvim-treesitter.configs").setup({
    build = ":TSUpdate",
    indent = {
      enable = true,
    },
    autotag = {
      enable = true,
    },
    ensure_installed = {
      -- "astro",
      -- "bash",
      -- "css",
      -- "gitignore",
      -- "html",
      -- "javascript",
      -- "json",
      "lua",
      -- "markdown",
      "python",
      "typescript",
    },
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = true,
    },
  })
end

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  config = config
}
