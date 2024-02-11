-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.plugins = {
  { "Yazeed1s/oh-lucy.nvim" },
  { "frenzyexists/aquarium-vim" },
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
}

lvim.colorscheme = "oh-lucy"

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true
vim.opt.wrap = true

vim.api.nvim_create_user_command('W',function()
  vim.cmd("w")
end,{})
