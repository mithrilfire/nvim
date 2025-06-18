return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "css", "typescript", "python", "latex", "json", "gitignore", "gdscript", "dockerfile", "cmake", "bash", "astro", "c_sharp", "regex" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}
