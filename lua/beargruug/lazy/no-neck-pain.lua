return {
	"shortcuts/no-neck-pain.nvim",
	version = "*",
	config = function()
		require("no-neck-pain").setup({
			width = 130,
			fallbackOnBufferDelete = true,
			autocmds = {
				enableOnVimEnter = false,
				reloadOnColorSchemeChange = true,
			},
			buffers = {
				setNames = true,
				left = {
					scratchPad = {
						enabled = true,
						fileName = "notes",
						location = "~/",
					},
				},
				bo = {
					filetype = "md",
				},
			},
			mappings = {
				enabled = true,
				toggle = "<leader>zk",
			},
		})
	end,
}
