local function ts_disable(_, bufnr)
	return vim.api.nvim_buf_line_count(bufnr) > 5000
end

return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				highlight = {
					enable = true,
					disable = function(lang, bufnr)
						return ts_disable(lang, bufnr)
					end,
					additional_vim_regex_highlighting = { "markdown" },
				},
				ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "typescript" },
				sync_install = false,
				auto_install = true,
				context = {
					enable = true,
					throttle = true,
					max_lines = 0,
					patterns = {
						default = {
							"function",
							"method",
							"for",
							"while",
							"if",
							"switch",
							"case",
						},
						typescript = {
							"class_declaration",
							"abstract_class_declaration",
							"else_clause",
						},
					},
				},
			})
		end,
	},
}
