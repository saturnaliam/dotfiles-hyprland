lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.options.disabled_filetypes = { "vimwiki", "alpha" }

-- left side of the bar
lvim.builtin.lualine.sections.lualine_a = { "filename" }
lvim.builtin.lualine.sections.lualine_b = { "progress" }
lvim.builtin.lualine.sections.lualine_c = { "diagnostics" }

-- right side of the bar
lvim.builtin.lualine.sections.lualine_x = { "branch" }
lvim.builtin.lualine.sections.lualine_y = { "filetype" }
lvim.builtin.lualine.sections.lualine_z = { "mode", "os.date('%H:%M')" }
