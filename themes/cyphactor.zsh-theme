# Based on Cyphactor's .zsh file repo
# found at https://github.com/cyphactor/dotzsh

# Prompt
local dollar="%(?,%{$fg[green]%}$%{$reset_color%},%{$fg[red]%}$%{$reset_color%})"

PROMPT='
%~
${dollar} %{$reset_color%}'

if [ -e ~/.rvm/bin/rvm-prompt ]; then
RPROMPT='%{$fg[white]%} $(~/.rvm/bin/rvm-prompt)$(~/.oh-my-zsh/custom/cyphactor/git-cwd-info.rb)%{$reset_color%}'
else
RPROMPT='%{$fg[white]%} $(~/.oh-my-zsh/custom/cyphactor/git-cwd-info.rb)%{$reset_color%}'
fi
