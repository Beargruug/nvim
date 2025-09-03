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
	config = function()
		local fff = require("fff")
		fff.setup({
			prompt = "",
			preview = {
				line_numbers = false,
				wrap_lines = false,
				show_file_info = false,
			},
			keymaps = {
				close = {"<Esc>", "<C-c>"},
				select = "<CR>",
				select_split = "<C-s>",
				select_vsplit = "<C-v>",
				select_tab = "<C-t>",
				move_up = { "<Up>", "<C-p>" },
				move_down = { "<Down>", "<C-n>" },
				preview_scroll_up = "<C-u>",
				preview_scroll_down = "<C-d>",
				toggle_debug = "<F2>",
			},
		})
	end,
}
