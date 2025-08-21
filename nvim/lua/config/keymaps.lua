-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = false })
vim.api.nvim_set_keymap("v", "<leader>p", '"_dP', { noremap = true, silent = true })

-- Undotree
vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeToggle, { desc = "Undotree" })

-- Telescope
vim.keymap.set("n", "<leader>fF", function()
  require("telescope.builtin").find_files({
    additional_args = function()
      return {
        "--hidden",
        "--glob",
        "!.git/*",
        "--glob",
        "!node_modules/*",
        "--glob",
        "!.cache/*",
      }
    end,
  })
end, { desc = "Find Files (including hidden)" })
