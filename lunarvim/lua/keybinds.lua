vim.api.nvim_create_user_command('W',function()
  vim.cmd("w")
end,{}) -- allows :W to also save the file because I kept accidentally typing that

lvim.keys.normal_mode["<M-Tab>"] = ":BufferLineCycleNext<CR>" -- next buffer
lvim.keys.normal_mode["<M-S-Tab>"] = ":BufferLineCyclePrev<CR>" -- previous buffer
lvim.keys.normal_mode["<M-m>"] = ":edit ~/notes/index.md<CR>" -- open up notes
lvim.keys.normal_mode["U"] = "<C-r>" -- redo
lvim.keys.normal_mode["<C-c>"] = ":BufferKill<CR>" -- kill a buffer

lvim.keys.normal_mode["<C-b>"] = ":noh<CR>" -- stops searching for a match
lvim.keys.insert_mode["<C-b>"] = ":noh<CR>"

lvim.keys.normal_mode["H"] = "gh" -- uses the visual lines for navigation
lvim.keys.normal_mode["J"] = "gj"
lvim.keys.normal_mode["K"] = "gk"
lvim.keys.normal_mode["L"] = "gl"

lvim.keys.normal_mode["<Enter>"] = "" -- removes the thing where vimwiki auto tries to open lol

lvim.builtin.which_key.mappings = {
  ["e"] = { "<cmd>NvimTreeToggle<CR>", "Explorer" }, -- opens up nvim tree
  ["n"] = { "<cmd>edit ~/notes/index.md<CR>", "Edit notes" }, -- opens up my notes
  ["k"] = { "<cmd>Telescope keymaps<CR>", "Keybinds" },

  l = {
    name = "LunarVim",
    c = { "<cmd>edit " .. get_config_dir() .. "/config.lua<CR>", "Edit config" }, -- edit the config
    d = { "<cmd>LvimDocs<CR>", "Documentation" }, -- lvim documentation
    r = { "<cmd>LvimReload<CR>", "Reload config" }, -- reloads the config
    u = { "<cmd>LvimUpdate<CR>", "Update" }, -- updates lvim
  },
  f = {
    name = "File",
    ["."] = { "<cmd>Telescope find_files<CR>", "Find file" }, -- finds a file
    s = { "<cmd>w!<CR>", "Save" }, -- saves a file
    r = { "<cmd>Telescope oldfiles<CR>", "Recent files" }, -- opens recent files
  },
  p = {
    name = "Plugins",
    i = { "<cmd>Lazy install<CR>", "Install" }, -- installs packages
    s = { "<cmd>Lazy sync<CR>", "Sync" }, -- syncs packages
    c = { "<cmd>Lazy clean<CR>", "Clean" }, -- cleans packages
    u = { "<cmd>Lazy update<CR>", "Update" }, -- updates packages
  }
}
