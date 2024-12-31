-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

require("java").setup {}

local lspconfig = require "lspconfig"
-- EXAMPLE
local servers = {
  "clangd",
  "tailwindcss",
  "html",
  "cssls",
  "cmake",
  "eslint",
  "emmet_ls",
  "lua_ls",
  "jsonls",
  "bashls",
  "docker_compose_language_service",
  "dockerls",
  "marksman",
  "pyright",
  "jdtls",
}

local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- handlers = handlers,
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig["vtsls"].setup {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  -- handlers = handlers,

  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },

  settings = {
    vtsls = {
      experimental = {
        completion = {
          enableServerSideFuzzyMatch = true,
        },
      },
    },
  },
}
