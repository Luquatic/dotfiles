if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

set fish_greeting

alias ls "eza --icons"
alias lsa "eza -lha --group-directories-first --icons=auto"
alias hyprc "nvim ~/.config/hypr"
alias audioc "omarchy-launch-or-focus-tui wiremix"
alias clip "xclip -selection clipboard"
alias wms "~/Development/WMS.jessey.fransen"
