lvim.plugins = {
  -- colors
  { "Yazeed1s/oh-lucy.nvim" },
  { "frenzyexists/aquarium-vim" },
  { "tiagovla/tokyodark.nvim" },
  { "dasupradyumna/midnight.nvim" },
  { "mellow-theme/mellow.nvim" },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- general plugins
  { "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end,
  },
  { "iamcco/markdown-preview.nvim",
    build = "cd app & npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  { "simrat39/symbols-outline.nvim",
    config = function()
      require('symbols-outline').setup()
    end
  },
  { "vimwiki/vimwiki" },
}

lvim.colorscheme = "catppuccin-mocha"
-- lvim.colorscheme = "mellow"
-- lvim.colorscheme = "aquarium"
-- lvim.colorscheme = "catppuccin-frappe"
-- lvim.colorscheme = "oh-lucy"

-- setting tabs to be 2 spaces
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- relative lines numbers + wrapping
vim.opt.relativenumber = true
vim.opt.wrap = true

vim.api.nvim_create_user_command('W',function()
  vim.cmd("w")
end,{})

lvim.keys.normal_mode["<Tab>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":BufferLineCyclePrev<CR>"

lvim.keys.insert_mode["<C-h>"] = "<Left>"
lvim.keys.insert_mode["<C-l>"] = "<Right>"
lvim.keys.insert_mode["<C-j>"] = "<Down>"
lvim.keys.insert_mode["<C-k>"] = "<Up>"

lvim.keys.normal_mode["<C-m>"] = "<Plug>VimwikiIndex"
