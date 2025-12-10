if vim.fn.has("unix") == 1 then
  vim.g.shell = "fish"
elseif vim.fn.has("win32") == 1 then
  vim.g.shell = "powershell"
end
vim.g.lazyvim_picker = "fzf"
vim.g.lazyvim_prettier_needs_config = true
