return {
  {
    "beargruug/projectlaunch.nvim",
    config = function()
      local projectlaunch = require('projectlaunch')

      projectlaunch.setup({
        split_default_width = 80,
        split_focus_on_open = false,
        config_path = "~/.projectlaunch.json",
        auto_reload_config = true,
        max_menu_width = 80,
      })

      vim.keymap.set('n', "<leader><leader>m", projectlaunch.toggle_main_menu,
        { noremap = true, expr = false, buffer = false })
      vim.keymap.set('n', "<leader><leader>lf", projectlaunch.toggle_float,
        { noremap = true, expr = false, buffer = false })
      vim.keymap.set('n', "<leader>ls", projectlaunch.toggle_split, { noremap = true, expr = false, buffer = false })
      vim.keymap.set('n', "<leader>ln", projectlaunch.show_next, { noremap = true, expr = false, buffer = false })
      vim.keymap.set('n', "<leader>lm", projectlaunch.show_prev, { noremap = true, expr = false, buffer = false })
      vim.keymap.set('n', "<leader>lr", projectlaunch.restart_command_in_split,
        { noremap = true, expr = false, buffer = false })

      projectlaunch.add_custom_command("cp ../.env.local-frontend ./frontend/.env.local")
      projectlaunch.add_custom_command("cp ../.env-culture ./backend-services/apps/culture-svc/.env")
      projectlaunch.add_custom_command("cp ../.env-user ./backend-services/apps/user-svc/.env")
      projectlaunch.add_custom_command("cp ../.env-gateway ./backend-services/apps/gateway/.env")
      projectlaunch.add_custom_command("pnpm --prefix ./frontend run start")
      projectlaunch.add_custom_command("make start-culture-service -C ./backend-services")
      projectlaunch.add_custom_command("make start-user-service -C ./backend-services")
      projectlaunch.add_custom_command("make start-gateway -C ./backend-services")
      projectlaunch.add_custom_command("pnpm --prefix ./frontend install")
      projectlaunch.add_custom_command("pnpm --prefix ./backend-services/apps/user-svc install")
      projectlaunch.add_custom_command("pnpm --prefix ./backend-services/apps/culture-svc install")
      projectlaunch.add_custom_command("pnpm --prefix ./backend-services/apps/gateway install")
      projectlaunch.add_custom_command("pnpm --prefix ./frontend run generate:graphql")
      projectlaunch.add_custom_command("pnpm --prefix ./frontend run test")
      projectlaunch.add_custom_command("pnpm --prefix ./frontend run tsc ")
      projectlaunch.add_custom_command("pnpm --prefix ./frontend run start:dev")
      projectlaunch.add_custom_command("pnpm --prefix ./frontend run build")
      projectlaunch.add_custom_command("pnpm --prefix ./frontend run storybook")
      projectlaunch.add_custom_command("pnpm --prefix ./frontend run cypress:open:local")
      projectlaunch.add_custom_command("pnpm --prefix ./frontend run loki:test")
    end
  }
}
