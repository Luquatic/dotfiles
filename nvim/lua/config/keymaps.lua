-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

--undotree
vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeToggle, { desc = "Undotree" })

--harpoon
local harpoon = require("harpoon")
harpoon:setup()

local wk = require("which-key")
wk.add({
  { "<leader>h", group = "harpoon" },
})

vim.keymap.set("n", "<leader>ha", function()
  harpoon:list():add()
end, { desc = "Add to list" })
vim.keymap.set("n", "<leader>he", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Toggle list" })
vim.keymap.set("n", "<leader>h1", function()
  harpoon:list():select(1)
end, { desc = "Select 1 from list" })
vim.keymap.set("n", "<leader>h2", function()
  harpoon:list():select(2)
end, { desc = "Select 2 from list" })
vim.keymap.set("n", "<leader>h3", function()
  harpoon:list():select(3)
end, { desc = "Select 3 from list" })
vim.keymap.set("n", "<leader>h4", function()
  harpoon:list():select(4)
end, { desc = "Select 4 from list" })
