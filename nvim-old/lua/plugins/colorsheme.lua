return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  opts = function()
    return {
      transparent = false,
    }
  end,
  priority = 1000,
  config = function()
    --load the colorscheme
    vim.cmd([[colorscheme kanagawa-dragon]])
  end,
}
