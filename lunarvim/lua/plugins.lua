lvim.plugins = {
  -- colors
  { "Yazeed1s/oh-lucy.nvim" },
  { "frenzyexists/aquarium-vim" },
  { "tiagovla/tokyodark.nvim" },
  { "dasupradyumna/midnight.nvim" },
  { "mellow-theme/mellow.nvim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "nyoom-engineering/nyoom.nvim" },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  { "sontungexpt/witch" },
  { "xero/miasma.nvim" },
  { "rockerBOO/boo-colorscheme-nvim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "rebelot/kanagawa.nvim" },

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
