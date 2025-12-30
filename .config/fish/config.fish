if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

set fish_greeting
set fish_color_error

export BAT_THEME="Catppuccin Mocha"
export FZF_DEFAULT_COMMAND="fd --type f --hidden --exclude .git"
export FZF_DEFAULT_OPTS='--bind "enter:become(nvim {})"'

alias ls "eza --icons"
alias lsa "eza -lha --group-directories-first --icons=auto"
alias lt "eza --tree --level=2 --long --icons --git"
alias lta "lt -a"

alias ff "fzf --preview 'bat --style=numbers --color=always {}'"
alias clip "xclip -selection clipboard"

# Directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias wms "$HOME/Development/WMS.jessey.fransen"

# Config
alias hyprc "nvim $HOME/.config/hypr"
alias audioc "omarchy-launch-or-focus-tui wiremix"
