require "nvchad.options"

-- add yours here!
-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
-- 	callback = function()
-- 		require("lint").try_lint()
-- 	end,
-- })

vim.opt.fillchars = {
  fold = " ",
  foldopen = "",
  foldsep = " ",
  foldclose = "",
  stl = " ",
  eob = " ",
}

vim.opt.pumheight = 7
vim.opt.wrap = true

if vim.fn.has "win32" == 1 then
  vim.o.shell = "pwsh"
  vim.o.shellcmdflag =
    "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
  vim.o.shellredir = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
  vim.o.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
  vim.o.shellquote = ""
  vim.o.shellxquote = ""
end

-- vim.api.nvim_create_autocmd("BufWritePre", {
--     pattern = {"*.tsx", "*.ts", "*.jsx", "*.js"},
--     command = "EslintFixAll"
-- })
