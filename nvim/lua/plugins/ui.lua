return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },
  -- notify
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },
  --logo
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
  █████▒██▀███  ▓█████   ██████      ██████  ██▓███   ▄▄▄       ▄████▄  ▓█████ 
▓██   ▒▓██ ▒ ██▒▓█   ▀ ▒██    ▒    ▒██    ▒ ▓██░  ██▒▒████▄    ▒██▀ ▀█  ▓█   ▀ 
▒████ ░▓██ ░▄█ ▒▒███   ░ ▓██▄      ░ ▓██▄   ▓██░ ██▓▒▒██  ▀█▄  ▒▓█    ▄ ▒███   
░▓█▒  ░▒██▀▀█▄  ▒▓█  ▄   ▒   ██▒     ▒   ██▒▒██▄█▓▒ ▒░██▄▄▄▄██ ▒▓▓▄ ▄██▒▒▓█  ▄ 
░▒█░   ░██▓ ▒██▒░▒████▒▒██████▒▒   ▒██████▒▒▒██▒ ░  ░ ▓█   ▓██▒▒ ▓███▀ ░░▒████▒
 ▒ ░   ░ ▒▓ ░▒▓░░░ ▒░ ░▒ ▒▓▒ ▒ ░   ▒ ▒▓▒ ▒ ░▒▓▒░ ░  ░ ▒▒   ▓▒█░░ ░▒ ▒  ░░░ ▒░ ░
 ░       ░▒ ░ ▒░ ░ ░  ░░ ░▒  ░ ░   ░ ░▒  ░ ░░▒ ░       ▒   ▒▒ ░  ░  ▒    ░ ░  ░
 ░ ░     ░░   ░    ░   ░  ░  ░     ░  ░  ░  ░░         ░   ▒   ░           ░   
          ░        ░  ░      ░           ░                 ░  ░░ ░         ░  ░
    ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
  --zen mode
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = true,
        tmux = true,
        kitty = { enabled = false, font = "+2" },
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },
}
