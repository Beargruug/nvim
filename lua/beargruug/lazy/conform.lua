return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		local formatters_by_ft = {
			lua = { "stylua" },
			go = { "gofmt" },
		}
		conform.setup({
			default_format_opts = {
				timeout_ms = 3000,
				async = false,
				quiet = false,
				lsp_format = "fallback",
			},
			formatters_by_ft = formatters_by_ft,
			formatters = {
				injected = { options = { ignore_errors = true } },
			},
		})
		vim.keymap.set({ "n", "v" }, "<leader>f", function()
			if formatters_by_ft[vim.bo.filetype] ~= nil then
				conform.format()
			else
				vim.lsp.buf.format()
			end
		end)
	end,
}
