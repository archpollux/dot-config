set -x PATH /usr/local/share/npm/bin /usr/local/bin $PATH

set -x EDITOR vim

set -x LC_CTYPE en_US.UTF-8
set -x LC_ALL en_US.UTF-8

set -x __fish_git_prompt_showdirtystate 'yes'
set -x __fish_git_prompt_showstashstate 'yes'
set -x __fish_git_prompt_showupstream 'verbose'

# set -x __fish_git_prompt_color green
set -x __fish_git_prompt_color_branch green
set -x __fish_git_prompt_color_dirtystate red
set -x __fish_git_prompt_color_upstream yellow

# Status Chars
# set -x __fish_git_prompt_char_dirtystate '⚡'
set -x __fish_git_prompt_char_dirtystate '⚑'
set -x __fish_git_prompt_char_stagedstate '→'
set -x __fish_git_prompt_char_stashstate '↩'
set -x __fish_git_prompt_char_upstream_ahead '↑'
set -x __fish_git_prompt_char_upstream_behind '↓'
