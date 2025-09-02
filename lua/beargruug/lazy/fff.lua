return {
	"dmtrKovalenko/fff.nvim",
	build = "cargo build --release",
	opts = { -- (optional)
		debug = {
			enabled = true, -- we expect your collaboration at least during the beta
			show_scores = true, -- to help us optimize the scoring system, feel free to share your scores!
		},
	},
	lazy = false,
	keys = {
		{
			"<leader>pf", -- try it if you didn't it is a banger keybinding for a picker
			function()
				require("fff").find_files()
			end,
			desc = "FFFind files",
		},
	},
	config = function()
		local fff = require("fff")
		fff.setup({
			prompt = "",
			preview = {
				line_numbers = false,
				wrap_lines = false,
				show_file_info = false,
			},
		})
	end,
}
