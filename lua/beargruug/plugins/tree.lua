return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			disable_netrw = false,
			hijack_netrw = false,
			view = {
				width = 50,
			},
		})
	end,
}
