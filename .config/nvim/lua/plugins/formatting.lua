return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      json = { "prettier" },
      jsonc = { "prettier" },
      -- add others as needed
    },

    formatters = {
      ["prettier.jsonc"] = {
        inherit = "prettier",
        prepend_args = { "--trailing-comma", "none" },
      },
    },

    formatters_by_ft = {
      jsonc = { "prettier.jsonc" },
      json = { "prettier" },
    },
  },
}
