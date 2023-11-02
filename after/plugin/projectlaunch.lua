-- loptionally override defaults
local projectlaunch = require('projectlaunch')

projectlaunch.setup({
    -- set a default width for split windows
    split_default_width = 80,
    -- if opening the split terminal should move focus to the split's window
    split_focus_on_open = false,
    -- the filename of configuration file which under root directory.
    config_path = "~/.projectlaunch.json",
    -- automatically reload config after loading a session or updating your ProjectLaunch config file
    auto_reload_config = true,
})

-- open the main menu
vim.keymap.set('n', "<leader><leader>m", projectlaunch.toggle_main_menu, {noremap = true, expr = false, buffer = false})

-- open the floating window terminal viewer
vim.keymap.set('n', "<leader><leader>lf", projectlaunch.toggle_float, {noremap = true, expr = false, buffer = false})

-- open the split window terminal viewer
vim.keymap.set('n', "<leader>ls", projectlaunch.toggle_split, {noremap = true, expr = false, buffer = false})

-- show the next or previous terminals in the open viewer
vim.keymap.set('n', "<leader>ln", projectlaunch.show_next, {noremap = true, expr = false, buffer = false})
vim.keymap.set('n', "<leader>lm", projectlaunch.show_prev, {noremap = true, expr = false, buffer = false})

-- restart the command running in the currently open split terminal
vim.keymap.set('n', "<leader>lr", projectlaunch.restart_command_in_split, {noremap = true, expr = false, buffer = false})

-- add custom commands programmatically. you can write your own lua code to add a list of commands
-- from a tool you use that projectlaunch.nvim doesn't support. or type part of a long command that
-- you need to use occasionally, then use 'e' in the launch menu to edit and add the rest, like for
-- running specific parts of test suites, put everything but the test suite name in here then edit later
projectlaunch.add_custom_command("pnpm --prefix ./frontend run install")
projectlaunch.add_custom_command("pnpm --prefix ./frontend run start")
projectlaunch.add_custom_command("pnpm --prefix ./frontend run generate:graphql")
projectlaunch.add_custom_command("pnpm --prefix ./frontend run test")
projectlaunch.add_custom_command("pnpm --prefix ./frontend run tsc ")
projectlaunch.add_custom_command("pnpm --prefix ./frontend run start:dev")
projectlaunch.add_custom_command("pnpm --prefix ./frontend run build")
projectlaunch.add_custom_command("pnpm --prefix ./frontend run storybook")
projectlaunch.add_custom_command("pnpm --prefix ./frontend run cypress:open:local")
projectlaunch.add_custom_command("pnpm --prefix ./frontend run loki:test")
projectlaunch.add_custom_command("pnpm --prefix ./backend-services/apps/$1 run preinstall")
projectlaunch.add_custom_command("pnpm --prefix ./backend-services/apps/$1 run docker-compose up -d")
projectlaunch.add_custom_command("pnpm --prefix ./backend-services/apps/$1 run prisma migrate dev")
projectlaunch.add_custom_command("pnpm --prefix ./backend-services/apps/$1 run start:dev")

