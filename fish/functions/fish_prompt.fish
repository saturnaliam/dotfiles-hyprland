function fish_prompt
  printf ' %s%s/%s%s %s><> ' (set_color $fish_color_command) (prompt_pwd) (set_color $fish_color_cwd) (fish_git_prompt) (set_color $fish_color_keyword)
end
