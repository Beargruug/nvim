local function ts_disable(_, bufnr)
  return vim.api.nvim_buf_line_count(bufnr) > 5000
end

require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = function(lang, bufnr)
      return lang == "cmake" or ts_disable(lang, bufnr)
    end,
    additional_vim_regex_highlighting = false,
  },
  ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "typescript" },
  sync_install = false,
  auto_install = true,
  context = {
    enable = true,   -- Enable this plugin (Can be enabled/disabled later via commands)
    throttle = true, -- Throttles plugin updates (may improve performance)
    max_lines = 0,   -- How many lines the window should span. Values <= 0 mean no limit.
    patterns = {     -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
      -- For all filetypes
      -- Note that setting an entry here replaces all other patterns for this entry.
      -- By setting the 'default' entry below, you can control which nodes you want to
      -- appear in the context window.
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
    }
  },
}
