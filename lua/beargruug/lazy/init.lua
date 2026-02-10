return {
	{ "nvim-lua/plenary.nvim" },
	{ "tpope/vim-repeat" },
	{ "tpope/vim-surround" },

	{ "ThePrimeagen/git-worktree.nvim" },
	{ "ThePrimeagen/vim-be-good" },
	{ "Yggdroot/indentLine" },

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
	{ "github/copilot.vim" },

	{
		dir = "~/personal/skipper.nvim",
	},
	{
		dir = "~/personal/xls-viewer.nvim",
		config = function()
			require("xls-viewer").setup()
		end,
	},
}
