return {
  {
    "folke/trouble.nvim",
    config = function()
      local trouble = require('trouble')

      trouble.setup {
        icons = false,
      }
      vim.keymap.set("n", "<leader>tt", function()
        trouble.toggle()
      end)
      vim.keymap.set("n", "<leader>xw", function()
        trouble.toggle("workspace_diagnostics")
      end)
      vim.keymap.set("n", "<leader>xd", function()
        trouble.toggle("document_diagnostics")
      end)
      vim.keymap.set("n", "<leader>xq", function()
        trouble.toggle("quickfix")
      end)
      vim.keymap.set("n", "<leader>xl", function()
        trouble.toggle("loclist")
      end)
      vim.keymap.set("n", "gR", function()
        trouble.toggle("lsp_references")
      end)
    end
  },
}
