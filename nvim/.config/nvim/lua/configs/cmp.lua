local opts = {
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
    { name = "buffer" },
    { name = "nvim_lua" },
    { name = "path" },
    { name = "render-markdown" },
    {
      name = "lazydev",
      group_index = 0, -- set group index to 0 to skip loading LuaLS completions
    },
  },
}

return opts
