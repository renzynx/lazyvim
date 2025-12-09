-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set shell based on OS
if vim.fn.has("unix") == 1 then
  vim.g.shell = "fish"
elseif vim.fn.has("win32") == 1 then
  vim.g.shell = "powershell"
end
vim.g.lazyvim_picker = "fzf"
vim.g.lazyvim_prettier_needs_config = true
