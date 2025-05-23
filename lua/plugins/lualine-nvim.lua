local config = function()
  local theme = require("lualine.themes.ayu_dark")

  -- theme.normal.c.bg = nil
  -- theme.insert.c.bg = nil
  -- theme.visual.c.bg = nil
  -- theme.replace.c.bg = nil
  -- theme.command.c.bg = nil

  require("lualine").setup({
    options = {
      theme = theme,
      globalstatus = true,
    },
    tabline = {},
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "buffers" },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    }
  })
end

return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  config = config,
}
