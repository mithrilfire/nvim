return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      local colors = require("tokyonight.colors").setup()
      local util = require("tokyonight.util")
      local hlfg = "#fafafa"

      -- TODO: add this feature
      -- NOTE: use inverse square to quickly draw 3d spaces
      -- FIX: fix the memory leak
      -- ERR: critical error

      vim.api.nvim_set_hl(0, "HighlightInfo", { fg = hlfg, bg = util.darken(colors.hint, 0.9), bold = true })
      vim.api.nvim_set_hl(0, "HighlightInfoText", { fg = colors.hint })
      vim.api.nvim_set_hl(0, "HighlightHint", { fg = hlfg, bg = util.darken(colors.info, 0.9), bold = true })
      vim.api.nvim_set_hl(0, "HighlightHintText", { fg = colors.info })
      vim.api.nvim_set_hl(0, "HighlightWarn", { fg = hlfg, bg = util.darken(colors.warning, 0.9), bold = true })
      vim.api.nvim_set_hl(0, "HighlightWarnText", { fg = colors.warning })
      vim.api.nvim_set_hl(0, "HighlightDang", { fg = hlfg, bg = util.darken(colors.red, 0.9), bold = true })
      vim.api.nvim_set_hl(0, "HighlightDangText", { fg = colors.red })

      vim.cmd [[colorscheme tokyonight]]
    end
  }
}
