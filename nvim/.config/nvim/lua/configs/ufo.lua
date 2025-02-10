local opts = {
  close_fold_kinds_for_ft = { default = { "imports" } },
  provider_selector = function()
    return { "treesitter", "indent" }
  end,
}

return opts
