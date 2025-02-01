-- overriding default plugin configs!

local M = {}

M.treesitter = {
  ensure_installed = {
    --bash
    "bash",

    --cpp
    "cpp",
    "c",

    --cmake
    "cmake",

    --lua
    "lua",

    --webdev
    "javascript",
    "typescript",
    "tsx",
    "html",
    "css",
    "json5",
  },
}

M.ibline = {
  indent = { char = "│", highlight = "IblChar" },
  scope = { enabled = false },
}

-- nvim-telescope/telescope.nvim
M.telescope = {
  defaults = {
    file_ignore_patterns = { "node_modules", ".git" },
  },

  pickers = {
    find_files = {
      -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
      find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
    },
  },
}

M.cmp = {
  window = {
    completion = {
      scrollbar = true,
    },
  },

  experimental = {
    ghost_text = true,
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "nvim_lsp_signature_help" },
    { name = "buffer" },
    { name = "nvim_lua" },
    { name = "path" },
    {
      name = "lazydev",
      group_index = 0, -- set group index to 0 to skip loading LuaLS completions
    },
  },
}

return M
