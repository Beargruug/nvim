return {
	{
		{ "nvim-lua/plenary.nvim" },

		{ "tpope/vim-repeat" },
		{ "tpope/vim-surround" },

		{ "ThePrimeagen/git-worktree.nvim" },
		{ "ThePrimeagen/vim-be-good" },
		-- shows hex color codes in the color they represent
		{
			"norcalli/nvim-colorizer.lua",
			config = function()
				require("colorizer").setup()
			end,
		},
		{ "nvim-treesitter/playground" },
		{ "nvim-treesitter/nvim-treesitter-context" },

		{
			"numToStr/Comment.nvim",
			config = function()
				require("Comment").setup()
			end,
		},
		{
			"JoosepAlviste/nvim-ts-context-commentstring",
			config = function()
				require("ts_context_commentstring").setup()
			end,
		},
		-- don't know if i should keep this
		-- { "Yggdroot/indentLine" },

		{ "sindrets/diffview.nvim" },
		{ "APZelos/blamer.nvim" },
		-- { "MeanderingProgrammer/render-markdown.nvim" },

		{ "github/copilot.vim" },
		{
			dir = "~/personal/blink",
		},
	},
}
