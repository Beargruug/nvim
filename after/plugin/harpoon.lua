local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-b>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-m>", function() ui.nav_file(3) end)

-- Harpoon 2 config
-- local harpoon = require("harpoon")

-- harpoon:setup()

-- vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
-- vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- vim.keymap.set("n", "<C-b>", function() harpoon:list():select(1) end)
-- vim.keymap.set("n", "<C-n>", function() harpoon:list():select(2) end)
-- vim.keymap.set("n", "<C-m>", function() harpoon:list():select(3) end)

