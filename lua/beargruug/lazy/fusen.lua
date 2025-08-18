return {
	"walkersumida/fusen.nvim",
	event = "VimEnter",
	config = function()
		require("fusen").setup({
			-- Mark appearance
			mark = {
				icon = "N",
				hl_group = "FusenMark",
			},
			-- Annotation display settings
			annotation_display = {
				mode = "eol", -- "eol", "float", "both", "none"
				prefix = " N ",

				-- Float window settings
				float = {
					delay = 100,
					border = "rounded",
					max_width = 50,
					max_height = 10,
				},
			},
		})
	end,
}
