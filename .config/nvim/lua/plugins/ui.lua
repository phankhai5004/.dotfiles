return {
  {
    "RRethy/vim-illuminate",
    event = { "CursorHold", "CursorHoldI" },
    config = function()
      require "configs.illuminate"
    end,
  },
}
