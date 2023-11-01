local telescope = require('telescope')

local builtin = require('telescope.builtin')

vim.keymap.set('n', ';f', builtin.git_files, {})
vim.keymap.set('n', '<c-p>', builtin.find_files, {})
vim.keymap.set('n', ';r', builtin.live_grep, {})
vim.keymap.set('n', ';h', builtin.oldfiles, {})
vim.keymap.set('n', '\\', builtin.buffers, {})

local actions = require('telescope.actions')

-- Global remapping
------------------------------
telescope.setup {
  defaults = {
    file_ignore_patterns = { "node_modules" },
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
}
vim.keymap.set('n', '<leader>gwt', ':Telescope git_worktree git_worktrees<CR>')
vim.keymap.set('n', '<leader>gct', ':Telescope git_worktree create_git_worktree<CR>')
vim.keymap.set('n', '<leader>gdt', ':Telescope git_worktree delete_git_worktree<CR>')
