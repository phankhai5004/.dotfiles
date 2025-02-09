local function find_command()
  if 1 == vim.fn.executable "rg" then
    return { "rg", "--files", "--color", "never", "-g", "!.git" }
  elseif 1 == vim.fn.executable "fd" then
    return { "fd", "--type", "f", "--color", "never", "-E", ".git" }
  elseif 1 == vim.fn.executable "fdfind" then
    return { "fdfind", "--type", "f", "--color", "never", "-E", ".git" }
  elseif 1 == vim.fn.executable "find" and vim.fn.has "win32" == 0 then
    return { "find", ".", "-type", "f" }
  elseif 1 == vim.fn.executable "where" then
    return { "where", "/r", ".", "*" }
  end
end

local opts = {
  defaults = {
    file_ignore_patterns = { "node_modules", ".git" },
  },

  pickers = {
    find_files = {
      find_command = find_command,
      hidden = true,
    },
  },
}

return opts
