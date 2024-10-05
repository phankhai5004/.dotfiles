return {
  {
    "folke/todo-comments.nvim",
    event = "BufReadPost",
    cmd = { "TodoLocList", "TodoQuickFix", "TodoTelescope" },
    opts = {},
  },

  {
    "RRethy/vim-illuminate",
    event = { "CursorHold", "CursorHoldI" },
    config = function()
      require "configs.illuminate"
    end,
  },
}
