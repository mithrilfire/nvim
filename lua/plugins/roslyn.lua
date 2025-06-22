return {
  {
    "seblyng/roslyn.nvim",
    ft = "cs",
    ---@module 'roslyn.config'
    ---@type RoslynNvimConfig
    opts = {
      -- your configuration comes here; leave empty for default settings
      -- NOTE: You must configure `cmd` in `config.cmd` unless you have installed via mason

      ---@type vim.lsp.ClientConfig
      config = {
        -- Here you can pass in any options that that you would like to pass to `vim.lsp.start`.
        -- Use `:h vim.lsp.ClientConfig` to see all possible options.
        -- The only options that are overwritten and won't have any effect by setting here:
        --     - `name`
        --     - `root_dir`
        cmd = {
          "dotnet",
          "/home/fatih/Apps/roslyn-ls/Microsoft.CodeAnalysis.LanguageServer.dll",
          "--logLevel=Information",
          "--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.get_log_path()),
          "--stdio",
        },
      },
    },
  }
}
