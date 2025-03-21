return {
	"kawre/leetcode.nvim",
	build = ":TSUpdate html",
	cmd = "Leet",
	event = {
		"BufReadPre leetcode.nvim",
	},
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim", -- required by telescope
		"MunifTanjim/nui.nvim",

		-- optional
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		plugins = {
			non_standalone = true,
		},
		-- configuration goes here
		lang = "javascript",
		storage = {
			home = "~/personal/leetcode/code/",
		},
	},
}
