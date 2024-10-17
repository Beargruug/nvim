return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			disable_netrw = false,
			hijack_netrw = false,
			update_focused_file = {
				enable = true,
			},
			view = {
				width = 50,
			},
		})
	end,
}
