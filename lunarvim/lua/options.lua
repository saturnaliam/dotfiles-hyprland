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

-- turns off lsp when entering a vimwiki file
lvim.autocommands = {
  {
    "BufWinEnter", {
      pattern = { "*.wiki" },
      callback = function ()
        vim.cmd("lua require('cmp').setup.buffer { enabled = false }")
      end
    },
  }
}
