# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cyphactor"

# export EDITOR="atom -w"
# export VISUAL="atom -w"
export EDITOR="mvim -f"
export VISUAL="mvim -f"

# Aliases
alias start_employee="screen -c ~/Screen/employee_service.screen -S EMPLOYEE_SERVICE"
alias start_convert="screen -c ~/Screen/rpp_web_app.screen -S RPP_WEB_APP"
alias start_backfill="screen -c ~/Screen/subscription_backfill.screen -S BACKFILL"
alias simple="screen -c ~/Screen/simple.screen -S SIMPLE"
alias web="cd ~/Code/reachconvert"
alias employee="cd ~/Code/client_employee_service"
alias v="vagrant"
alias hammer="echo '![Hammer](http://www.chattaa.com/images/gavel-50x50.png)'"
alias thumbsup="echo '![ThumbsUp](http://disruptmedicine.files.wordpress.com/2012/03/thumbs-up-small-left.jpg)'"
alias here="subl ."

alias diff="git diff"

if [[ "$TERM" == screen* ]]; then
  export TERM=screen-256color-bce
fi

# Do not auto title Screen windows
export DISABLE_AUTO_TITLE="true"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export GEM_HOME=$HOME/gems
export PATH=$GEM_HOME/bin:$PATH


# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

source ~/keystone.rc

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
