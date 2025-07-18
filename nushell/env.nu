$env.XDG_CONFIG_HOME = "/Users/jessey/.config"

# The prompt indicators are environmental variables that represent
# the state of the prompt
$env.PROMPT_INDICATOR = {|| "> " }
$env.PROMPT_INDICATOR_VI_INSERT = {|| ": " }
$env.PROMPT_INDICATOR_VI_NORMAL = {|| "> " }
$env.PROMPT_MULTILINE_INDICATOR = {|| "::: " }

use std "path add"
path add /opt/homebrew/bin
path add /Users/jessey/.local/bin
path add ($env.HOME | path join ".volta" "bin")
