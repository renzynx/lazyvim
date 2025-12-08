local highlight = {
  "RainbowRed",
  "RainbowYellow",
  "RainbowBlue",
  "RainbowOrange",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowCyan",
}
local hooks = require("ibl.hooks")

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#ed8796" })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#eed49f" })
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#8aadf4" })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#f5a97f" })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#a6da95" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#c6a0f6" })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#8bd5ca" })
end)

vim.g.rainbow_delimiters = { highlight = highlight }

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)

return {
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "LazyFile",
    opts = function()
      Snacks.toggle({
        name = "Indention Guides",
        get = function()
          return require("ibl.config").get_config(0).enabled
        end,
        set = function(state)
          require("ibl").setup_buffer(0, { enabled = state })
        end,
      }):map("<leader>ug")

      return {
        indent = {
          char = "│",
          tab_char = "│",
        },
        scope = { show_start = false, show_end = false, highlight = highlight },
        exclude = {
          filetypes = {
            "Trouble",
            "alpha",
            "dashboard",
            "help",
            "lazy",
            "mason",
            "neo-tree",
            "notify",
            "snacks_dashboard",
            "snacks_notif",
            "snacks_terminal",
            "snacks_win",
            "toggleterm",
            "trouble",
          },
        },
      }
    end,
    main = "ibl",
  },
}
