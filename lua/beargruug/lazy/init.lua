return {
	{ "nvim-lua/plenary.nvim", lazy = true },
	{ "tpope/vim-repeat", event = "VeryLazy" },
	{ "tpope/vim-surround", event = "VeryLazy" },

	{ "ThePrimeagen/vim-be-good", cmd = "VimBeGood" },
	{
		"thenbe/markdown-todo.nvim",
		ft = "markdown",
		config = true,
	},

	{
		"sindrets/diffview.nvim",
		cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory", "DiffviewToggleFiles" },
		keys = { "<leader>dv", "<leader>dq" },
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	{ "github/copilot.vim", event = "InsertEnter" },

	{
		dir = "~/personal/ai-klammer.nvim",
        opts = { annoyance = 2 }
	},
	{
		dir = "~/personal/skipper.nvim",
	},
	{
		dir = "~/personal/xls-viewer.nvim",
		config = function()
			require("xls-viewer").setup()
		end,
	},

	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "/" },
			},
		},
	},
}
