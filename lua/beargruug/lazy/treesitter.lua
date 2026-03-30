return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		branch = "main",
		lazy = false,
		config = function()
			require("nvim-treesitter").setup({})

			require("nvim-treesitter").install({
				"vimdoc",
				"javascript",
				"typescript",
				"c",
				"lua",
				"jsdoc",
				"bash",
				"go",
				"ruby",
			})

			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "*" },
				callback = function(args)
					local bufnr = args.buf
					local ok, parser = pcall(vim.treesitter.get_parser, bufnr)
					if not ok or not parser then
						return
					end
					pcall(vim.treesitter.start)

					-- vim.bo[bufnr].syntax = "on"
				end,
			})

			vim.api.nvim_create_autocmd("User", {
				pattern = "TSUpdate",
				callback = function()
					local parsers = require("nvim-treesitter.parsers")

					parsers.cram = {
						tier = 0,

						---@diagnostic disable-next-line: missing-fields
						install_info = {
							path = "~/git/tree-sitter-cram",
							files = { "src/parser.c" },
						},
					}

					parsers.reason = {
						tier = 0,

						---@diagnostic disable-next-line: missing-fields
						install_info = {
							url = "https://github.com/reasonml-editor/tree-sitter-reason",
							files = { "src/parser.c", "src/scanner.c" },
							branch = "master",
						},
					}

					parsers.blade = {
						tier = 0,

						---@diagnostic disable-next-line: missing-fields
						install_info = {
							url = "https://github.com/EmranMR/tree-sitter-blade",
							files = { "src/parser.c" },
							branch = "main",
						},
						filetype = "blade",
					}
				end,
			})
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
		after = "nvim-treesitter",
		config = function()
			require("treesitter-context").setup({
				enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
				multiwindow = false, -- Enable multiwindow support.
				max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
				min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
				line_numbers = true,
				multiline_threshold = 20, -- Maximum number of lines to show for a single context
				trim_scope = "outer", -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
				mode = "cursor", -- Line used to calculate context. Choices: 'cursor', 'topline'
				-- Separator between context and content. Should be a single character string, like '-'.
				-- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
				separator = nil,
				zindex = 20, -- The Z-index of the context window
				on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
			})
		end,
	},
}
