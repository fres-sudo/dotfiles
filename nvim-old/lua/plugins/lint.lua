return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        markdownlint = {
          args = { "--disable", "MD013", "--" },
        },
      },
    },
    config = function()
      -- Disable linting for Markdown files
      require("lint").linters_by_ft = {
        markdown = {}, -- Empty list disables linting for Markdown
      }

      -- Optional: Set up linting on save globally
      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        callback = function()
          require("lint").try_lint()
        end,
      })
    end,
  },
}
