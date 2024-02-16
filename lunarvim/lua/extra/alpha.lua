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
    { "f", lvim.icons.ui.FindFile .. "  Find File", "<CMD>Telescope find_file<CR>" },
    { "n", lvim.icons.ui.Pencil .. "  New File", "<CMD>ene!<CR>" },
    { "h", lvim.icons.ui.History .. "  Recent Files", ":Telescope oldfiles<CR>" },
    { "c", lvim.icons.ui.Gear .. "  Configure LunarVim", "<CMD>edit " .. require("lvim.config"):get_user_config_path() .. "<CR>" },
    { "q", lvim.icons.ui.Close .. "  Quit", "<CMD>quit<CR>" },
  }
}

local function footer()
  local foot = "welcome! "
  return foot
end

lvim.builtin.alpha.dashboard.section.footer.val = footer()
lvim.builtin.alpha.dashboard.section.buttons = buttons
