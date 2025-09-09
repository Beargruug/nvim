return {
	{ "nvim-lua/plenary.nvim" },
	{ "tpope/vim-repeat" },
	{ "tpope/vim-surround" },

	{ "ThePrimeagen/git-worktree.nvim" },
	{ "ThePrimeagen/vim-be-good" },

	{ "nvim-treesitter/playground" },
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
	{
		"sindrets/diffview.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{ "tjdevries/present.nvim" },

	{
		dir = "~/personal/skipper.nvim",
	},
}
