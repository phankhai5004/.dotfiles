---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<C-a>"] = {
      "gg<S-V>G",
      "Select all",
      opts = { nowait = true },
    },
    ["<F6>"] = { "<CMD>RunCode<CR>", "Compile and run code", { nowait = true } },
  },
}

M.comment = {
  n = {
    ["<C-_>"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },
  },

  v = {
    ["<C-_>"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },
}

M.typing = {
  v = {
    ["<A-j>"] = {
      ":m'>+1<CR>gv=gv",
      "Move line down",
      opts = { silent = true },
    },
    ["<A-k>"] = {
      ":m'<-2<CR>gv=gv",
      "Move line up",
      opts = { silent = true },
    },
    ["<A-Down>"] = {
      ":m'>+1<CR>gv=gv",
      "Move line docn",
      opts = { silent = true },
    },
    ["<A-Up>"] = {
      ":m'<-2<CR>gv=gv",
      "Move line up",
      opts = { silent = true },
    },
  },
}

M.lspconfig = {
  plugin = true,

  -- See `<cmd> :help vim.lsp.*` for documentation on any of the belo' functions

  n = {
    ["gD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "LSP declaration",
    },

    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition",
    },

    ["K"] = {
      function()
        require("pretty_hover").hover()
      end,
      "LSP hover",
    },

    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    },

    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },

    ["<leader>D"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "LSP definition type",
    },

    ["<F2>"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },

    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },

    ["gr"] = {
      "<CMD>Telescope lsp_references<CR>",
      "LSP references",
    },

    ["<leader>f"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev { float = { border = "rounded" } }
      end,
      "Goto prev",
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      "Goto next",
    },

    ["<leader>q"] = {
      "<CMD>Telescope diagnostics<CR>",
      "Diagnostic setloclist",
    },

    ["<leader>'a"] = {
      function()
        vim.lsp.buf.add_corkspace_folder()
      end,
      "Add workspace folder",
    },

    ["<leader>wr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "Remove workspace folder",
    },

    ["<leader>wl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "List workspace folders",
    },
  },
}

M.git = {
  n = {
    ["<leader>gb"] = {
      "<cmd> Gitsigns toggle_current_line_blame <CR>",
      "Toggle Current line blame",
    },
  },
}

M.todo = {
  n = {
    ["<leader>td"] = {
      "<cmd> TodoTelescope <CR>",
      "Toggle Current line blame",
    },
  },
}

-- more keybinds!

return M
