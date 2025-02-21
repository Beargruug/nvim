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

		{ "sindrets/diffview.nvim" }, -- should i keep it?
		{ "APZelos/blamer.nvim" },
		-- { "MeanderingProgrammer/render-markdown.nvim" },

		{ "github/copilot.vim" },
		{
			dir = "~/personal/blink.nvim",
		},
		{
			"beargruug/air-quality.nvim",
		},
		{
			dir = "~/personal/vue-i18n.nvim",
			config = function()
				require("vue_i18n").setup()
			end,
		},
		-- {
		-- 	dir = "~/personal/js-i18n.nvim",
		-- 	dependencies = {
		-- 		"neovim/nvim-lspconfig",
		-- 		"nvim-treesitter/nvim-treesitter",
		-- 		"nvim-lua/plenary.nvim",
		-- 	},
		-- 	event = { "BufReadPre", "BufNewFile" },
		-- 	opts = {},
		-- },
		-- {
		-- 	dir = "~/personal/neoally",
		-- 	config = function()
		-- 		require("neoally").setup()
		-- 	end,
		-- },
	},
}
