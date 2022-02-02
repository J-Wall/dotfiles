
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/jesse/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
#
# kill the right prompt __conda_add_prompt
function __conda_add_prompt; end

set -g theme_date_timezone Australia/Canberra

source "$HOME/.homesick/repos/homeshick/homeshick.fish"
set -x DISPLAY localhost:0.0
