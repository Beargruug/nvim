return {
	{
		{ "nvim-lua/plenary.nvim" },
		{ "tpope/vim-repeat" },
		{ "tpope/vim-surround" },

		{ "ThePrimeagen/git-worktree.nvim" },
		{ "ThePrimeagen/vim-be-good" },

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
		-- {
		-- replaced by folke?
		-- 	"JoosepAlviste/nvim-ts-context-commentstring",
		-- 	config = function()
		-- 		require("ts_context_commentstring").setup()
		-- 	end,
		-- },
		-- {
		-- 	"folke/ts-comments.nvim",
		-- 	opts = {},
		-- 	event = "VeryLazy",
		-- 	enabled = vim.fn.has("nvim-0.10.0") == 1,
		-- },
		{ "sindrets/diffview.nvim" }, -- should i keep it?
		{ "APZelos/blamer.nvim" },

		{ "github/copilot.vim" },
		{
			dir = "~/personal/blink.nvim",
		},
		{
			-- "beargruug/air-quality.nvim",
			dir = "~/personal/air-quality.nvim",
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
