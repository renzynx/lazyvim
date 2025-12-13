return {
  {
    "Shatur/neovim-ayu",
    lazy = true,
    name = "neovim-ayu",
    init = function()
      vim.g.ayucolor = "dark"
    end,
     config = function()
       require('ayu').setup({})
     end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ayu",
    },
  },
}
