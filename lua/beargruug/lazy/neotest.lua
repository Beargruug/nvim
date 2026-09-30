return {
	"nvim-neotest/neotest",
	keys = { "<leader>tr", "<leader>tcf", "<leader>tv", "<leader>ts", "<leader>to", "<leader>ta" },
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		-- branch must match lua/beargruug/lazy/treesitter.lua or lazy merges the specs inconsistently
		{ "nvim-treesitter/nvim-treesitter", branch = "main" },
		"olimorris/neotest-rspec",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-rspec")({
					rspec_cmd = function()
						return {
							"docker",
							"exec",
							-- no -t: a TTY is only available under neotest's pty strategy
							"-i",
							"-w",
							vim.env.RSPEC_WORKDIR or "/workspaces/datapool",
							-- compose derives this name deterministically, so it survives rebuilds
							vim.env.RSPEC_CONTAINER or "devcontainer-app-1",
							"bash",
							"-l",
							"bundle",
							"exec",
							"rspec",
						}
					end,
					transform_spec_path = function(path)
						local prefix = require("neotest-rspec").root(path)
						return string.sub(path, string.len(prefix) + 2, -1)
					end,
					results_path = "tmp/rspec.output",
					formatter = "json",
				}),
			},
		})
		vim.keymap.set("n", "<leader>tr", function()
			require("neotest").run.run({
				suite = false,
				testify = true,
			})
		end, { desc = "Debug: Running Nearest Test" })

		vim.keymap.set("n", "<leader>tcf", function()
			require("neotest").run.run(vim.fn.expand("%"))
		end, { desc = "Debug: Running File" })

		vim.keymap.set("n", "<leader>tv", function()
			require("neotest").summary.toggle()
		end, { desc = "Debug: Summary Toggle" })

		vim.keymap.set("n", "<leader>ts", function()
			require("neotest").run.run({
				suite = true,
				testify = true,
			})
		end, { desc = "Debug: Running Test Suite" })

		vim.keymap.set("n", "<leader>to", function()
			require("neotest").output.open()
		end, { desc = "Debug: Open test output" })

		vim.keymap.set("n", "<leader>ta", function()
			require("neotest").run.run(vim.fn.getcwd())
		end, { desc = "Test: Run all tests" })
	end,
}
