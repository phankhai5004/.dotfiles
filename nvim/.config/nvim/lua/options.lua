require "nvchad.options"

local opt = vim.opt

-- add yours here!
opt.autoread = true
opt.swapfile = false
opt.autowrite = true
opt.pumheight = 13
opt.wrap = true

vim.o.foldcolumn = "auto"
vim.o.foldlevel = 99 -- Using ufo provider need a large value
vim.o.foldlevelstart = 99
vim.o.foldnestmax = 0
vim.o.foldenable = true
vim.o.foldmethod = "indent"

vim.opt.fillchars = {
  fold = " ",
  foldopen = "",
  foldsep = " ",
  foldclose = "",
  stl = " ",
  eob = " ",
}
opt.statuscolumn = [[%!v:lua.require'snacks.statuscolumn'.get()]]
-- vim.opt.conceallevel = 2

if vim.fn.has "win32" == 1 then
  vim.o.shell = vim.fn.executable "pwsh" and "pwsh" or "powershell"
  vim.o.shellcmdflag =
    "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
  vim.o.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
  vim.o.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
  vim.o.shellquote = ""
  vim.o.shellxquote = ""
end

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
