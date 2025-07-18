return {
    { "nvim-lua/plenary.nvim" },
    { "tpope/vim-repeat" },
    { "tpope/vim-surround" },

    { "ThePrimeagen/git-worktree.nvim" },
    { "ThePrimeagen/vim-be-good" },

    { "nvim-treesitter/playground" },
    { "nvim-treesitter/nvim-treesitter-context" },
    {
        "thenbe/markdown-todo.nvim",
        ft = { "md", "markdown" },
        config = true,
    },

    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    },
    { "sindrets/diffview.nvim" }, -- should i keep it?

    -- { "github/copilot.vim" },
    {
        dir = "~/personal/skipper.nvim",
    },
}
