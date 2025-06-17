require("beargruug.set")
require("beargruug.remap")

require("beargruug.lazy")
require("beargruug.globals")

local augroup = vim.api.nvim_create_augroup
local BeargruugGroup = augroup("BeargruugGroup ", {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

autocmd("TextYankPost", {
    group = yank_group,
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 40,
        })
    end,
})

autocmd({ "BufWritePre" }, {
    group = BeargruugGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd("LspAttach", {
    group = BeargruugGroup,
    callback = function(e)
        local opts = { buffer = e.buffer }
        vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", opts)
        vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", opts)
        vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
        vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
    end,
})

-- vim.g.netrw_browse_split = 0
-- vim.g.netrw_banner = 0
-- vim.g.netrw_winsize = 25
