return {
  {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
      require("mini.statusline").setup(
        { use_icons = true }
      )
      -- require("mini.notify").setup()
      require('mini.ai').setup()
      require('mini.surround').setup()
      require("mini.diff").setup({
        -- Options for how hunks are visualized
        view = {
          -- Visualization style. Possible values are 'sign' and 'number'.
          -- Default: 'number' if line numbers are enabled, 'sign' otherwise.
          style = 'sign',

          -- Signs used for hunks with 'sign' view
          signs = { add = '┃', change = '┃', delete = '┃' },

          -- Priority of used visualization extmarks
          priority = 1,
        },
      })
    end
  },
}
