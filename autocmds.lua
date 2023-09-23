local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

autocmd("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank({higroup='YankVisual', timeout=200})",
  group = augroup("YankHighlight", { clear = true }),
})

autocmd({ "ModeChanged" }, {
  pattern = { "s:n", "i:*" },
  callback = function()
    if
      require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
      and not require("luasnip").session.jump_active
    then
      require("luasnip").unlink_current()
    end
  end,
})

autocmd("BufEnter", {
  command = [[set formatoptions-=cro]],
})

-- Fix semantic tokens for lsp
autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then
      return
    end
    client.server_capabilities.semanticTokensProvider = nil
  end,
})
