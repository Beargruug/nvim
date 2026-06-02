return {
	"rcarriga/nvim-notify",
	lazy = false,
	config = function()
		local notify = require("notify")

		local bg = "#000000"

		notify.setup({
			stages = "fade",
			timeout = 3000,
			render = "compact",
			background_colour = bg,
		})

		vim.notify = notify
	end,
}
