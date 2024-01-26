return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")

      harpoon.setup()
      vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
      vim.keymap.set("n", "<c-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

      vim.keymap.set("n", "<c-b>", function() harpoon:list():select(1) end)
      vim.keymap.set("n", "<c-n>", function() harpoon:list():select(2) end)
      vim.keymap.set("n", "<c-m>", function() harpoon:list():select(3) end)
    end
  },
}
