-- Toggle colorcolumn between 120 and no column
vim.api.nvim_create_user_command("ToggleColorColumn", function()
  vim.g.ccenable = not vim.g.ccenable

  if vim.g.ccenable then
    vim.opt.cc = "121"
  else
    vim.opt.cc = "0"
  end
end, {})
