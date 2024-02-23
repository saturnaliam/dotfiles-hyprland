fish_add_path ~/.local/bin/ 
fish_add_path ~/.npm-global/bin/
set -g __fish_git_prompt_showdirtystate 1

function fish_greeting
end

if status is-interactive
end

# general aliases
alias rmdir="rm -rfi"
alias rm="rm -i"
alias ls="ls -A --color=tty"
alias l="lvim"
alias t="tmux"
alias h="z ~"

# git aliases
alias gaa="git add --all"
alias ga="git add"
alias gm="git commit -m"
alias gp="git push"
alias gl="git pull"

# arch aliases
alias pacin="sudo pacman -S"
alias pacre="sudo pacman -R"
alias pacup="sudo pacman -Syu"
alias yain="yay -S"
alias yare="yay -R"

zoxide init fish | source
