return {
	"j-hui/fidget.nvim",
	lazy = false,
	opts = {
		notification = {
			window = {
				winblend = 0,
				relative = "editor",
			},
		},
	},
	config = function(_, opts)
		require("fidget").setup(opts)
		vim.notify = require("fidget").notify
	end,
}
