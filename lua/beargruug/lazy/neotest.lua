return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        "olimorris/neotest-rspec",
    },
    config = function()
        require("neotest").setup({
            adapters = {
                require("neotest-rspec")({
                    rspec_cmd = function()
                        return {
                            "docker", "exec", "-it",
                            "-w", "/workspaces/datapool",
                            "88568bb11f09", "bash", "-l",
                            "bundle", "exec", "rspec"
                        }
                    end,
                    transform_spec_path = function(path)
                        local prefix = require('neotest-rspec').root(path)
                        return string.sub(path, string.len(prefix) + 2, -1)
                    end,
                    results_path = "tmp/rspec.output",
                    formatter = "json"
                })
            }
        })
        vim.keymap.set("n", "<leader>tr", function()
            require("neotest").run.run({
                suite = false,
                testify = true,
            })
        end, { desc = "Debug: Running Nearest Test" })

        vim.keymap.set("n", "<leader>tv", function()
            require("neotest").summary.toggle()
        end, { desc = "Debug: Summary Toggle" })

        vim.keymap.set("n", "<leader>ts", function()
            require("neotest").run.run({
                suite = true,
                testify = true,
            })
        end, { desc = "Debug: Running Test Suite" })

        vim.keymap.set("n", "<leader>td", function()
            require("neotest").run.run({
                suite = false,
                testify = true,
            })
        end, { desc = "Debug: Debug Nearest Test" })

        vim.keymap.set("n", "<leader>to", function()
            require("neotest").output.open()
        end, { desc = "Debug: Open test output" })

        vim.keymap.set("n", "<leader>ta", function()
            require("neotest").run.run(vim.fn.getcwd())
        end, { desc = "Debug: Open test output" })
    end
}
