vim.api.nvim_create_user_command('W',function()
  vim.cmd("w")
end,{}) -- allows :W to also save the file because I kept accidentally typing that

lvim.keys.normal_mode["<Tab>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-Tab>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<M-m>"] = ":edit ~/notes/index.md<CR>"
lvim.keys.normal_mode["U"] = "<C-r>"
lvim.keys.normal_mode["<C-c>"] = ":BufferKill<CR>"
lvim.keys.normal_mode["<Enter>"] = "" -- removes the thing where vimwiki auto tries to open lol

lvim.keys.normal_mode["<C-b>"] = ":noh<CR>"
lvim.keys.insert_move["<C-b>"] = ":noh<CR>"

lvim.keys.insert_mode["<C-h>"] = "<Left>"
lvim.keys.insert_mode["<C-l>"] = "<Right>"
lvim.keys.insert_mode["<C-j>"] = "<Down>"
lvim.keys.insert_mode["<C-k>"] = "<Up>"

