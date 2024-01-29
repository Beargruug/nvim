return {
  {
    { 'nvim-lua/plenary.nvim' },

    { 'tpope/vim-repeat' },
    { 'tpope/vim-surround' },

    -- don't know if i like this
    {
      "folke/trouble.nvim",
      config = function()
        require("trouble").setup {
          icons = false,
        }
      end
    },

    { 'ThePrimeagen/git-worktree.nvim' },
    { 'ThePrimeagen/vim-be-good' },

    -- shows hex color codes in the color they represent
    {
      'norcalli/nvim-colorizer.lua',
      config = function() require("colorizer").setup {} end
    },

    { 'nvim-treesitter/playground' },
    { 'nvim-treesitter/nvim-treesitter-context' },

    { 'numToStr/Comment.nvim' },
    { 'JoosepAlviste/nvim-ts-context-commentstring' },
    { 'Yggdroot/indentLine' },

    { 'sindrets/diffview.nvim' },
    { 'APZelos/blamer.nvim' },

    { 'github/copilot.vim' },
  }
}
