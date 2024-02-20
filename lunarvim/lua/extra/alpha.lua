lvim.builtin.alpha.dashboard.section.header.val = {
  "██╗     ██╗   ██╗███╗   ██╗ █████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
  "██║     ██║   ██║████╗  ██║██╔══██╗██╔══██╗██║   ██║██║████╗ ████║",
  "██║     ██║   ██║██╔██╗ ██║███████║██████╔╝██║   ██║██║██╔████╔██║",
  "██║     ██║   ██║██║╚██╗██║██╔══██║██╔══██╗╚██╗ ██╔╝██║██║╚██╔╝██║",
  "███████╗╚██████╔╝██║ ╚████║██║  ██║██║  ██║ ╚████╔╝ ██║██║ ╚═╝ ██║",
  "╚══════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
}

local buttons = {
  ops = {
    hl_shortcut = "Include",
    spacing = 1,
  },
  entries = {
    { "f", lvim.icons.ui.FindFile .. "  Find File", "<CMD>Telescope find_files<CR>" },
    { "w", lvim.icons.ui.Note .. "  Open Notes", "<CMD>edit ~/notes/index.md<CR>" },
    { "n", lvim.icons.ui.Pencil .. "  New File", "<CMD>ene!<CR>" },
    { "c", "  Configure LunarVim", "<CMD>edit " .. require("lvim.config"):get_user_config_path() .. "<CR>" },
    { "C", lvim.icons.ui.Gear .. "  Open Dotfiles", "<CMD>edit ~/dotfiles-hyprland/README.md<CR><CMD>NvimTreeOpen<CR>"},
    { "q", lvim.icons.ui.Close .. "  Quit", "<CMD>quit<CR>" },
  }
}

local function footer()
  local foot = "welcome! "
  return foot
end

lvim.builtin.alpha.dashboard.section.footer.val = footer()
lvim.builtin.alpha.dashboard.section.buttons = buttons
