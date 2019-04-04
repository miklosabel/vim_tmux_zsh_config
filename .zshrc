# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="muse"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  extract
  vagrant
  colored-man-pages
  command-not-found
  vi-mode
  zsh-syntax-highlighting
  zsh-autosuggestions
  history-substring-search
)

source $ZSH/oh-my-zsh.sh

# User configuration

export PYTHONPATH="${PYTHONPATH}:/home/miklos/.vim/bundle/ropevim"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias l="ls -lA"
alias lessh='LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s" less -M'
alias cdc="cd -"
alias gst="git status"
alias gps="git push"
alias gpl="git pull"
alias ll='ls -alF'
alias l='ls -lA'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'
alias sertes='cd /home/miklos.abel/encosoft/PigBrotherEngine/src/python/neural_network/weight_summation_on_image/'
alias doc='cd /home/miklos.abel/encosoft/Documentation/Project/WorkSummary/miklos.abel'
alias lib='cd /home/miklos.abel/.local/lib/python3.6/site-packages'
# alias vera='cd /media/veracrypt1/hello/retrain-tesseract/'
alias annoscript='cd /home/miklos.abel/encosoft/PigBrotherEngine/src/python/scripts'
alias mrcnnres='cd /home/miklos.abel/mount/Y/miklos.abel/mrcnn_results'
function cdl { cd $1; l;}
function cdla { cd $1; la;}
function swap 
{
    local TMPFILE=tmp.$$
    sudo mv "$1" $TMPFILE
    sudo mv "$2" "$1"
    sudo mv $TMPFILE "$2"
}
alias tmux="TERM=screen-256color-bce tmux"
ca () {conda activate $1;}
#
# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/miklos.abel/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/miklos.abel/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/miklos.abel/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/miklos.abel/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
export ENCO_X_LOCATION="/home/miklos.abel/mount/X"
export ENCO_Y_LOCATION="/home/miklos.abel/mount/Y"
