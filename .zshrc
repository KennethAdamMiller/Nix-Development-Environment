#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#log_history -h -y -t -e -l ~/.bash_log
# Customize to your needs...
export PATH=$HOME/.opam/system/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Library/Frameworks/Python.framework/Versions/Current/bin:/opt/local/bin:/opt/local/sbin:$HOME/homebrew/bin:/sw/bin:/sw/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin:/usr/X11R6/bin:$HOME/bin:$HOME/.rvm/bin
#bindkey '^[[A' up-line-or-search
#bindkey '^[[B' down-line-or-search

. ~/.shell_functions


# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

#export PATH=$PATH:~/bin
eval `opam config -env`

export HISTFILESIZE=
export HISTSIZE=

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jonathan"
#jonathan does everything wanted, perhaps could put it in a different look like darkblood
#looks of darkblood
#fino-time almost

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump brew dircycle extract git-extras git-flow- git-hubflow git-remote-branch gitfast github grails gradle macport mvn pip)

source $ZSH/oh-my-zsh.sh
set -o vi

#[ $TERM != "screen"  ] && exec tmux

#script="/usr/bin/script"
#SHELL="/bin/zsh"
# this recursive definition starts a script session that records all input and output
# somewhat quietly, and then when exit is called, it dies appropriately
#if [ -z "$SPYSHELL" ]; then
    #export SPYSHELL=yes
    #$script -q "/Users/`whoami`/Documents/Shell Activity/`date`".
#else
    #exit
#fi
