vim.keymap.set("n", "<leader>l", ":put =printf('pp %s', expand('<cword>'))<CR>")
vim.keymap.set("n", "<leader>lp", ":put =printf('puts(''%s:'', %s);', expand('<cword>'), expand('<cword>'))<CR>")
