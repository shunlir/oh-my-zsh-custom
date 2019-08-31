#
# Depend on: Oh-my-zsh/lib/git.sh
#

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%F{cyan}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{red}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

local prompt_status="%(?,,%F{red}%?%{$reset_color%})"
local prompt_context="%(#,%F{red},%F{cyan})%n%{$reset_color%}@%F{cyan}%m"
local prompt_dir="%F{8}%25<...<%~%<<%{$reset_color%}"
local prompt_git='$(git_prompt_info)'

PROMPT="${prompt_context} ${prompt_dir} ${prompt_git} ${prompt_status}
%F{red}$ %{$reset_color%}"
