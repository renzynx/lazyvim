return {
  "stevearc/conform.nvim",
  optional = true,
  opts = function(_, opts)
    local supported =
      { "javascript", "typescript", "javascriptreact", "typescriptreact", "json", "jsonc", "css", "html", "markdown" }

    opts.formatters_by_ft = opts.formatters_by_ft or {}

    for _, ft in ipairs(supported) do
      opts.formatters_by_ft[ft] = opts.formatters_by_ft[ft] or {}
      table.insert(opts.formatters_by_ft[ft], "biome")
    end

    opts.formatters = opts.formatters or {}

    opts.formatters.biome = {
      require_cwd = true,
      args = { "format", "--stdin-file-path", "$FILENAME" },
    }
  end,
}
