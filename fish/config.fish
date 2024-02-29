## --- SETTINGS --- #
set -g __fish_git_prompt_showdirtystate 1
set fish_greeting

function fish_prompt
  printf ' %s%s/%s%s %s><> ' (set_color $fish_color_command) (prompt_pwd) (set_color $fish_color_cwd) (fish_git_prompt) (set_color $fish_color_keyword)
end

## --- ALIASES --- ##
# general aliases
alias rmdir="rm -rfi"
alias rm="rm -i"
alias ls="ls -A --color=tty"
alias l="lvim"
alias t="tmux"

# z aliases
alias home="z ~"
alias parent="z .."
alias ..="z .."
alias .2="z ../.."
alias .3="z ../../.."

# git aliases
alias gaa="git add --all"
alias ga="git add"
alias gm="git commit -m"
alias gp="git push"
alias gl="git pull"
alias gcl="git clone"

# arch aliases
alias pacin="sudo pacman -S"
alias pacre="sudo pacman -R"
alias pacup="sudo pacman -Syu"
alias pacsearch="pacman -Ss"
alias yain="yay -S"
alias yare="yay -R"

## --- FUNCTIONS --- #
# backs up a file
function backup
  set -f help "usage: backup --[backup|rollback] <directory>
Backs up a directory."

  if test (count $argv) -lt 2 
    echo $help
    return 0
  end

  argparse b/backup r/rollback h/help -- $argv

  if set -ql _flag_backup
    set -f filename ~/backups/(path basename $argv[1])_(date +%d_%m_%+4Y_%H_%M_%S).tar
    tar -cf $filename $argv[1] 2>&1 | grep -v  "Removing leading" 
    gzip $filename
  end

  if set -ql _flag_rollback
    tar -xvzf $argv[1]
  end

  if set -ql _flag_help
    echo $help
    return 0
  end
end

# moves src -> dest and symlinks dest -> src
function sym
  set -f help 'usage: sym <src> <dest>
Moves src to dest, and then symlinks dest to src.'

  if test (count $argv) -lt 2 
    echo $help
    return 0
  end

  argparse h/help -- $argv

  if set -ql _flag_help
    echo $help
    return 0
  end

  mv $argv[1] $argv[2]
  ln -s $argv[2] $argv[1]
end

# zoxide initialization
zoxide init fish | source
