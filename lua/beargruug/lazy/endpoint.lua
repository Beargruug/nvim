return {
	"zerochae/endpoint.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	cmd = { "Endpoint", "EndpointRefresh" },
	config = function()
		require("endpoint").setup({
			-- Picker configuration
			picker = {
				type = "telescope",
				options = {
					telescope = {},
				},
				-- Previewer configuration
				previewer = {
					enable_highlighting = true, -- Enable syntax highlighting in previewer (default: true)
				},
			},

			-- Cache configuration
			cache = {
				mode = "session", -- "none", "session", "persistent"
			},

			-- UI configuration
			ui = {
				show_icons = false,
				show_method = true,
				methods = {
					GET = { icon = "GET", color = "TelescopeResultsNumber" },
					POST = { icon = "POST", color = "TelescopeResultsConstant" },
					PUT = { icon = "PUT", color = "TelescopeResultsKeyword" },
					DELETE = { icon = "DELETE", color = "TelescopeResultsSpecialChar" },
					PATCH = { icon = "PATCH", color = "TelescopeResultsFunction" },
					ROUTE = { icon = "ROUTE", color = "TelescopeResultsIdentifier" },
				},
			},
		})
	end,
}
