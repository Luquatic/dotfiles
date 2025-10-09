# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# aliases
alias ls='eza --icons'
alias lsa='eza -lha --group-directories-first --icons=auto'
alias hyprc='nvim ~/.config/hypr'
alias clip='xclip -selection clipboard'

. "$HOME/.local/share/../bin/env"

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# mise
export PATH="$HOME/.local/share/mise/shims:$PATH"
