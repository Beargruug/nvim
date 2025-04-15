return {
	"rest-nvim/rest.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"rest-nvim/rest.nvim",
	},
	opts = function(_, opts)
		opts.ensure_installed = opts.ensure_installed or {}
		table.insert(opts.ensure_installed, "http")
	end,
	config = function()
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "json" },
			callback = function()
				vim.api.nvim_set_option_value("formatprg", "jq", { scope = "local" })
			end,
		})
	end,
}
