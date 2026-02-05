return {
	"ThePrimeagen/99",
	config = function()
		local _99 = require("99")

		-- For logging that is to a file if you wish to trace through requests
		-- for reporting bugs, i would not rely on this, but instead the provided
		-- logging mechanisms within 99.  This is for more debugging purposes
		local cwd = vim.uv.cwd()
		local basename = vim.fs.basename(cwd)
		_99.setup({
			logger = {
				level = _99.DEBUG,
				path = "/tmp/" .. basename .. ".99.debug",
				print_on_error = true,
			},

			completion = {
				custom_rules = {
					"scratch/custom_rules/",
				},
				source = "cmp",
			},
			md_files = {
				"AGENT.md",
			},
		})

		vim.keymap.set("n", "<leader>9ff", function()
			_99.fill_in_function()
		end)
		vim.keymap.set("n", "<leader>9fp", function()
			_99.fill_in_function_prompt()
		end)
		-- vim.keymap.set("n", "<leader>9fd", function()
		-- 	_99.fill_in_function({
		-- 		additional_rules = {
		-- 			_99:rule_from_path("~/.behaviors/debug.md"),
		-- 		},
		-- 	})
		-- end)
		vim.keymap.set("v", "<leader>9vv", function()
			_99.visual()
		end)
		vim.keymap.set("v", "<leader>9vp", function()
			_99.visual_prompt()
		end)
		vim.keymap.set("n", "<leader>9s", function()
			_99.stop_all_requests()
		end)
		vim.keymap.set("n", "<leader>9i", function()
			_99.info()
		end)
		vim.keymap.set("n", "<leader>9l", function()
			_99.view_logs()
		end)
		vim.keymap.set("n", "<leader>9n", function()
			_99.next_request_logs()
		end)
		vim.keymap.set("n", "<leader>9p", function()
			_99.prev_request_logs()
		end)
	end,
}
