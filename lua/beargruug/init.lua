require("beargruug.set")
require("beargruug.remap")

require("beargruug.init_lazy")
require("beargruug.globals")

local augroup = vim.api.nvim_create_augroup
local BeargruugGroup = augroup("BeargruugGroup", {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.hl.on_yank({
			higroup = "IncSearch",
			timeout = 40,
		})
	end,
})

-- Strip trailing whitespace without clobbering the search register or cursor position.
-- Skipped for markdown, where two trailing spaces is a hard line break.
autocmd({ "BufWritePre" }, {
	group = BeargruugGroup,
	pattern = "*",
	callback = function()
		if vim.bo.filetype == "markdown" then
			return
		end
		local view = vim.fn.winsaveview()
		vim.cmd([[keeppatterns %s/\s\+$//e]])
		vim.fn.winrestview(view)
	end,
})

autocmd("LspAttach", {
	group = BeargruugGroup,
	callback = function(e)
		local opts = { buffer = e.buffer }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<leader>vrr", "<cmd>Telescope lsp_references<cr>", opts)
		vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
		vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
		-- [d / ]d are builtin since 0.11 and point the right way round; don't re-map them.
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
	end,
})
