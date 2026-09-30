return {
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		keys = {
			"<leader>vf",
			"<c-P>",
			"<leader>vh",
			"<leader>of",
			"<leader>/",
			"<leader>or",
			"<leader>cb",
			"<leader>gwb",
			"<leader>sn",
			"<leader>gwt",
			"<leader>gct",
			"<leader>gdt",
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"ThePrimeagen/git-worktree.nvim",
		},
		config = function()
			require("telescope").setup({
				defaults = {
					wrap_results = true,
				},
				extensions = {
					fzf = {},
				},
			})

			pcall(require("telescope").load_extension, "fzf")
			pcall(require("telescope").load_extension, "git_worktree")

			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>vf", builtin.find_files, {})
			vim.keymap.set("n", "<c-P>", builtin.git_files, {})
			vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
			vim.keymap.set("n", "<leader>of", builtin.oldfiles, {})
			vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find)
			vim.keymap.set("n", "<leader>or", require("custom.multi-ripgrep"))
			vim.keymap.set("n", "<leader>cb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>gwb", ":Telescope git_branches<CR>")
			vim.keymap.set("n", "<leader>sn", function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end)
			vim.keymap.set("n", "<leader>gwt", ":Telescope git_worktree git_worktrees<CR>")
			vim.keymap.set("n", "<leader>gct", ":Telescope git_worktree create_git_worktree<CR>")
			vim.keymap.set(
				"n",
				"<leader>gdt",
				':lua require("git-worktree").delete_worktree(vim.fn.input("Delete worktree: "))<CR>'
			)
		end,
	},
}
