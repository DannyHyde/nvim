return {

  -- TODO : This is not working for me !!!
  -- Left as per the video guide, but the newer version is no longer
  -- based on treesitter and the commented section below is what I've
  -- found to replace the old version, but still no joy.

  "windwp/nvim-ts-autotag",
  lazy = false,

  -- require("nvim-ts-autotag").setup({
  --   enable = true,
  --   filetypes = {
  --     "html",
  --     "javascript",
  --     "typescript",
  --   },
  --   enable_close = true,
  --   enable_rename = true,
  --   enable_close_on_slash = false,
  --   per_filetype = {
  --     ["html"] = {
  --       enable_close = false,
  --     },
  --   },
  -- })
}
