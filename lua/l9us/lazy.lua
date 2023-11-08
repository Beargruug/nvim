local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

local plugins = {
  -- Run test inside nvim for jest
  -- ("klen/nvim-test")

  -- Colorscheme
  'rebelot/kanagawa.nvim',

  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
      }
    end
  },

  {
    'norcalli/nvim-colorizer.lua',
    config = function() require("colorizer").setup {} end
  },

  -- Blazingly fast plugins
  'ThePrimeagen/vim-be-good',
  'ThePrimeagen/harpoon',
  'ThePrimeagen/refactoring.nvim',
  'ThePrimeagen/git-worktree.nvim',

  --Project launcher
  -- 'sheodox/projectlaunch.nvim',
  "l9us/projectlaunch.nvim",

  -- Treesitter
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  "nvim-treesitter/playground",
  'nvim-treesitter/nvim-treesitter-context',

  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },
  'windwp/nvim-ts-autotag',

  -- Statusline
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons', lazy = true }
  },

  'numToStr/Comment.nvim',
  'JoosepAlviste/nvim-ts-context-commentstring',

  -- Icons
  'kyazdani42/nvim-web-devicons',

  -- UndoTree
  'mbbill/undotree',

  -- Vertical indent
  'Yggdroot/indentLine',

  -- Session
  'tpope/vim-fugitive',
  'tpope/vim-commentary',
  'tpope/vim-repeat',
  'tpope/vim-surround',
  'tpope/vim-dadbod',
  'kristijanhusak/vim-dadbod-ui',
  "kristijanhusak/vim-dadbod-completion",

  -- Git
  'sindrets/diffview.nvim',
  'APZelos/blamer.nvim',

  -- Telescope
  'nvim-telescope/telescope.nvim',
  -- 'nvim-telescope/telescope-file-browser.nvim',
  -- ('nvim-lua/popup.nvim')
  'nvim-lua/plenary.nvim',

  -- Prettier
  -- 'MunifTanjim/prettier.nvim',

  -- LSP
  { 'folke/lsp-colors.nvim',
    {
      'VonHeikemen/lsp-zero.nvim',
      dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },
        { 'williamboman/mason.nvim' },
        { 'williamboman/mason-lspconfig.nvim' },

        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
        { 'saadparwaiz1/cmp_luasnip' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-nvim-lua' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },

        -- Snippets
        { 'L3MON4D3/LuaSnip' },
        { 'rafamadriz/friendly-snippets' },
      }
    },
  },


  "github/copilot.vim",
  "folke/zen-mode.nvim",
}

require("lazy").setup(plugins, {
  change_detection = {
    notify = false,
  }
})
