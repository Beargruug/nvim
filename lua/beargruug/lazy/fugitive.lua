return {
	{
		"tpope/vim-fugitive",
		cmd = { "Git", "G", "Gvdiffsplit", "Gdiffsplit", "Gwrite", "Gread" },
		keys = { "<leader>gs" },
		config = function()
			vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

			local Beargruug_Fugitive = vim.api.nvim_create_augroup("Beargruug_Fugitive", {})

			local autocmd = vim.api.nvim_create_autocmd
			autocmd("BufWinEnter", {
				group = Beargruug_Fugitive,
				pattern = "*",
				callback = function()
					if vim.bo.ft ~= "fugitive" then
						return
					end

					local bufnr = vim.api.nvim_get_current_buf()
					local opts = { buffer = bufnr, remap = false }
					vim.keymap.set("n", "<leader>p", function()
						vim.cmd.Git("push")
					end, opts)

					-- rebase always
					vim.keymap.set("n", "<leader>P", ":Git pull --rebase <cr>", opts)

					vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts)

					vim.keymap.set("n", "dv", "<cmd>DiffviewOpen<CR>", {
						buffer = true,
						remap = false,
					})
				end,
			})

			-- Only bind inside diff buffers; globally these shadow builtin `gt` (next tab)
			-- and the builtin `gu` lowercase operator.
			autocmd("OptionSet", {
				group = Beargruug_Fugitive,
				pattern = "diff",
				callback = function()
					local opts = { buffer = true, remap = false }
					if vim.wo.diff then
						vim.keymap.set("n", "gt", "<cmd>diffget //2<CR>", opts)
						vim.keymap.set("n", "gu", "<cmd>diffget //3<CR>", opts)
					else
						pcall(vim.keymap.del, "n", "gt", { buffer = true })
						pcall(vim.keymap.del, "n", "gu", { buffer = true })
					end
				end,
			})
		end,
	},
}
