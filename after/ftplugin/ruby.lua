vim.keymap.set("n", "<leader>ll", ":put =printf('pp %s', expand('<cword>'))<CR>")
vim.keymap.set("n", "<leader>lp", ":put =printf('puts(''%s:'', %s);', expand('<cword>'), expand('<cword>'))<CR>")
