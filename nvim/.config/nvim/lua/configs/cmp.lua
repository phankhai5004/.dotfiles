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
    { name = "lazydev" },
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "nvim_lua" },
    { name = "path" },
    { name = "render-markdown" },
  },
}

return opts
