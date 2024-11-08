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
                theme = "wave",          -- Load "wave" theme when 'background' option is not set
                background = {           -- map the value of 'background' option to a theme
                    dark = "wave",       -- try "dragon" !
                    light = "lotus",
                },
            })

            vim.cmd("colorscheme kanagawa")
        end,
    },
}
