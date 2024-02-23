lvim.colorscheme = "catppuccin-mocha"
--lvim.colorscheme = "pink-moon"

-- setting termguiwhatever
if vim.fn.has("termguicolors") then
  vim.opt.termguicolors = true
end

-- setting tabs to be 2 spaces
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- relative lines numbers + wrapping
vim.opt.relativenumber = true
vim.opt.wrap = true

-- turns off lsp when entering a vimwiki file
lvim.autocommands = {
  {
    { "BufWinEnter", "BufEnter"}, {
      pattern = { "*.md" },
     callback = function ()
        vim.cmd("lua require('cmp').setup.buffer { enabled = false }")
        vim.opt.wrap = false
      end
    },
  },
}
