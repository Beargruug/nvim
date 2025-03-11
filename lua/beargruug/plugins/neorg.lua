return {
	"nvim-neorg/neorg",
	lazy = false,
	version = "*",
	config = function()
		local neorg = require("neorg")
		neorg.setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.dirman"] = {
					config = {
						autochdir = true,
						workspaces = {
							default = "~/.dotfiles/personal/neorg",
						},
						index = "index.norg",
					},
				},
			},
		})
	end,
}
