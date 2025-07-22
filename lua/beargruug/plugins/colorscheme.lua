function ColorMyPencils(color)
    color = color or "rose-pine-moon"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        config = function()
            require("kanagawa").setup({
                undercurl = true, -- enable undercurls
                commentStyle = { italic = false },
                functionStyle = { italic = false },
                keywordStyle = { italic = false },
                statementStyle = { bold = true, italic = false },
                typeStyle = {},
                variablebuiltinStyle = { italic = false },
                specialReturn = true,    -- special highlight for the return keyword
                specialException = true, -- special highlight for exception handling keywords
                transparent = false,     -- do not set background color
                dimInactive = false,     -- dim inactive window `:h hl-NormalNC`
                globalStatus = false,    -- adjust window separators highlight for laststatus=3
                terminalColors = true,   -- define vim.g.terminal_color_{0,17}
            })

            -- vim.cmd("colorscheme kanagawa-wave")
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                styles = {
                    italic = false,
                },
            })

            ColorMyPencils();
        end
    },
}
