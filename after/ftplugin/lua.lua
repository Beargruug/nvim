-- must be buffer-local: vim.opt here leaks these into every other buffer
vim.opt_local.shiftwidth = 2
vim.opt_local.expandtab = true

vim.keymap.set("n", "<leader>x", ":.lua<CR>")
vim.keymap.set("v", "<leader>x", ":.lua<CR>")
