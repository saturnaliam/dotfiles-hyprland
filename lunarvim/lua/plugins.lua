lvim.plugins = {
  -- colors
  { "Yazeed1s/oh-lucy.nvim" },
  { "tiagovla/tokyodark.nvim" },
  { "mellow-theme/mellow.nvim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "xero/miasma.nvim" },
  { "tlhr/anderson.vim" },
  { "sts10/vim-pink-moon" },

  -- general plugins
  { "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {}
  },
  { "simrat39/symbols-outline.nvim",
    config = function()
      require('symbols-outline').setup()
    end
  },
  { "vimwiki/vimwiki" },
  {
    'jakewvincent/mkdnflow.nvim',
    config = function()
      require('mkdnflow').setup({
          -- Config goes here; leave blank for defaults
      })
    end
  },
}
