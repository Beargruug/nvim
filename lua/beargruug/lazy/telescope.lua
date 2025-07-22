return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        },
        requires = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("telescope").setup({
                defaults = {
                    -- layout_config = {
                    -- 	preview_width = 0,
                    -- },
                },
            })

            pcall(require("telescope").load_extension, "fzf")

            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<c-P>", builtin.find_files, {})
            vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
            vim.keymap.set("n", "<leader>or", builtin.live_grep, {})
            vim.keymap.set("n", "<leader>of", builtin.oldfiles, {})
            vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find)
            vim.keymap.set("n", "<leader>b", builtin.buffers, {})
            vim.keymap.set("n", "<leader>gwb", ":Telescope git_branches<CR>")
            vim.keymap.set("n", "<leader>gwt", ":Telescope git_worktree git_worktrees<CR>")
            vim.keymap.set("n", "<leader>gct", ":Telescope git_worktree create_git_worktree<CR>")
            vim.keymap.set(
                "n",
                "<leader>gdt",
                ':lua require("git-worktree").delete_worktree(vim.fn.input("Delete worktree: "))<CR>'
            )
        end,
    },
}
