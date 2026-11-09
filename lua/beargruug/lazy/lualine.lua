return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "kanagawa",
				globalstatus = true, -- one statusline across all splits
			},
		})
	end,
}
