return {
  {
    { 'nvim-lua/plenary.nvim' },

    { 'tpope/vim-commentary' },
    { 'tpope/vim-repeat' },
    { 'tpope/vim-surround' },

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
