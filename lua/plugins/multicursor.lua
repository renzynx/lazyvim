return {
  "mg979/vim-visual-multi",
  init = function()
    vim.g.VM_maps = {
      ["Add Cursor Down"] = "<A-c>",
      ["Find Under"] = "<A-d>",
    }
  end,
}