return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")
		local formatters_by_ft = {
			javascript = { "prettierd" },
			typescript = { "prettierd" },
			vue = { "prettierd" },
			javascriptreact = { "prettierd" },
			typescriptreact = { "prettierd" },
			css = { "prettierd" },
			html = { "prettierd" },
			json = { "prettier" },
			yaml = { "yamlfix" },
			markdown = { "prettierd" },
			graphql = { "prettierd" },
			liquid = { "prettierd" },
			lua = { "stylua" },
		}
		conform.setup({
			default_format_opts = {
				timeout_ms = 3000,
				async = false, -- not recommended to change
				quiet = false, -- not recommended to change
				lsp_format = "fallback", -- not recommended to change
			},
			formatters_by_ft = formatters_by_ft,
			formatters = {
				injected = { options = { ignore_errors = true } },
				prettierd = {
					condition = function(ctx)
						return vim.fs.find({ ".prettierrc" }, { path = ctx.filename, upward = true })[1]
					end,
				},
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
