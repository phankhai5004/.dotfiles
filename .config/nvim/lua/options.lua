require "nvchad.options"

-- add yours here!

-- sync buffers automatically
vim.opt.autoread = true
vim.opt.swapfile = false
vim.opt.pumheight = 7
vim.opt.wrap = true
vim.opt.fillchars = {
  fold = " ",
  foldopen = "",
  foldsep = " ",
  foldclose = "",
  stl = " ",
  eob = " ",
}

vim.opt.guicursor = {
  "n-v-c:block-Cursor/lCursor-blinkwait3000-blinkon100-blinkoff100",
  "i-ci:ver25-Cursor/lCursor-blinkwait3000-blinkon100-blinkoff100",
  "r:hor50-Cursor/lCursor-blinkwait3000-blinkon100-blinkoff100",
}

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
