return {
	"m4xshen/hardtime.nvim",
	lazy = false,
	dependencies = {
		"MunifTanjim/nui.nvim",
		{
			"j-hui/fidget.nvim",
			opts = {
				notification = {
					window = {
						winblend = 0,
						relative = "editor",
					},
				},
			},
		},
	},
	opts = {
		disable_mouse = false,
		callback = function(text)
			require("fidget").notify(text)
		end,
	},
}
