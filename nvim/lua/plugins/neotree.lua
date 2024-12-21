return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "right",
      mappings = {
        ["l"] = "focus_preview",
      },
    },
    file_system = {
      follow_current_file = { enabled = true },
    },
  },
}
