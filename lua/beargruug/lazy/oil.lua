return {
	"stevearc/oil.nvim",
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	config = function()
		local oil = require("oil")

		oil.setup({
			view_options = {
				show_hidden = true,
			},
			keymaps = {
				["<C-h>"] = false,
				["<C-l>"] = false,
				["<C-k>"] = false,
				["<C-j>"] = false,
				["<C-p>"] = false,
			},
		})

		vim.keymap.set("n", "<leader>sf", "<cmd>Oil<CR>")

		vim.api.nvim_create_autocmd("FileType", {
			pattern = "oil",
			callback = function()
				vim.keymap.set("n", "<leader>cp", function()
					local entry = oil.get_cursor_entry()
					if entry then
						local full_path = oil.get_current_dir() .. entry.name
						local rel_path = vim.fn.fnamemodify(full_path, ":.")
						vim.fn.setreg("+", rel_path)
						print("Copied relative path: " .. rel_path)
					end
				end, { buffer = true, desc = "Copy Oil file path to clipboard" })
			end,
		})
	end,
}
