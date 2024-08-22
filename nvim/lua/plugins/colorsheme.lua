return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    --load the colorscheme
    vim.cmd([[colorscheme kanagawa-dragon]])
  end,
}
