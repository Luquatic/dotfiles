return {
  "folke/snacks.nvim",
  opts = {
    scroll = {
      enabled = false, -- Enable scrolling animations
    },
  },
  keys = {
    {
      "<leader>fF",
      LazyVim.pick("files", {
        root = false,
        hidden = true,
        follow = true,
      }),
      desc = "Find Files (cwd)",
    },
    {
      "<leader>fL",
      LazyVim.pick("files", {
        root = false,
        dirs = { "~/.local/share/" },
      }),
      desc = "Find Files (.local)",
    },
    {
      "<leader>sG",
      LazyVim.pick("live_grep", {
        root = false,
        hidden = true,
      }),
      desc = "Grep (cwd)",
    },
    {
      "<leader>sL",
      LazyVim.pick("live_grep", {
        root = false,
        dirs = { "~/.local/share/" },
      }),
      desc = "Grep (.local)",
    },
  },
}
