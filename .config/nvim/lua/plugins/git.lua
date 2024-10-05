return {
  {
    "f-person/git-blame.nvim",
    cmd = "GitBlameToggle",
  },

  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewToggleFiles" },
    config = function()
      require("diffview").setup()
    end,
  },
}
