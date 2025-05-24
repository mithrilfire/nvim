return {
  {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      local statusline = require("mini.statusline").setup(
        { use_icons = true }
      )
      require("mini.notify").setup()
    end
  },
}
