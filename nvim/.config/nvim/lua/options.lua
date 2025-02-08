require "nvchad.options"

-- add yours here!
vim.opt.autoread = true
vim.opt.swapfile = false
vim.opt.autowrite = true
vim.opt.pumheight = 13
vim.opt.wrap = true
vim.opt.fillchars = {
  fold = " ",
  foldopen = "",
  foldsep = " ",
  foldclose = "",
  stl = " ",
  eob = " ",
}

-- vim.opt.conceallevel = 1

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
