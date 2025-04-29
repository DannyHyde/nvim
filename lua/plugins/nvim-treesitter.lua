local config = function()
  require("nvim-treesitter.configs").setup({
    indent = {
      enable = true,
    },
    autotag = {
      enable = true,
    },
    ensure_installed = {
      -- Commented extra languages I have on my "to learn" list
      -- "astro",
      "bash",
      -- "c",
      -- "cpp",
      "css",
      "gitignore",
      -- "go",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      -- "python",
      -- "rust",
      -- "toml",
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
