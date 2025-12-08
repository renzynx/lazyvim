return {
  {
    "folke/snacks.nvim",
    opts = {
      indent = { enable = false },
      terminal = {
        shell = "pwsh.exe",
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
