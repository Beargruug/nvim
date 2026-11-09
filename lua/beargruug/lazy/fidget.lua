return {
	"j-hui/fidget.nvim",
	event = "VeryLazy",
	opts = {
		notification = {
			window = {
				winblend = 0,
				relative = "editor",
				align = "top",
			},
		},
	},
	config = function(_, opts)
		require("fidget").setup(opts)
		vim.notify = require("fidget").notify
	end,
}
