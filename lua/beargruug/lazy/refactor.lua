return {
	{
		"ThePrimeagen/refactoring.nvim",
		-- async.nvim is required on Neovim 0.12; drop it on 0.13+.
		dependencies = { "lewis6991/async.nvim" },
		keys = {
			{
				"<leader>rr",
				function()
					require("refactoring").select_refactor()
				end,
				mode = { "n", "x" },
				desc = "Select refactor",
			},
		},
	},
	{
		"antosha417/nvim-lsp-file-operations",
		dependencies = { "nvim-lua/plenary.nvim" },
		event = "LspAttach",
		opts = {},
	},
}
