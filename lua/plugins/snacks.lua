return {
  {
    "folke/snacks.nvim",
    opts = {
      indent = { enable = false },
      terminal = {
        shell = vim.fn.has("win32") == 1 and "pwsh.exe" or "fish",
      },
      picker = {
        sources = {
          explorer = {
            layout = {
              layout = {
                position = "right",
                width = 30,
              },
            },
          },
        },
      },
    },
  },
}
