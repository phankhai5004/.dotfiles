local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics
local action = null_ls.builtins.code_actions

local sources = {

  -- webdev stuff
  -- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  formatting.prettier, -- so prettier works only on these filetypes
  lint.eslint_d.with {
    condition = function(utils)
      return utils.root_has_file {
        ".eslintrc.js",
        ".eslintrc.cjs",
        ".eslintrc.yaml",
        ".eslintrc.yml",
        ".eslintrc.json",
      }
    end,
  },
  action.eslint_d.with {
    condition = function(utils)
      return utils.root_has_file {
        ".eslintrc.js",
        ".eslintrc.cjs",
        ".eslintrc.yaml",
        ".eslintrc.yml",
        ".eslintrc.json",
      }
    end,
  },

  -- Lua
  formatting.stylua,

  -- cpp
  formatting.clang_format,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
  debug = true,
  sources = sources,

  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format {
            bufnr = bufnr,
            filter = function(cliente)
              return cliente.name == "null-ls" --this ensures null_ls client is called to format, not normal LspFormatting
            end,
            async = false,
          }
        end,
      })
    end
  end,
}
