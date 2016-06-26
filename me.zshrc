# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="afowler"
ZSH_THEME="myclean"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git autojump osx httpie colored-man-pages marked2)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:$PATH
export LSCOLORS=Gxfxcxdxcxegedabagacad
export GOPATH=/Users/alexyin/Workspace/Go
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias c2='/Users/alexyin/Tools/comake_2-1-3-2304_PD_BL/comake2'
alias git'/usr/local/bin/git'
alias bison='/usr/local/opt/bison/bin/bison'
alias grep='grep --color=auto'
alias jq='~/Tools/jq-osx-amd64'
alias tmux='tmux -2'

unamestr=$(uname)
if [[ "${unamestr}" == "Linux" ]]; then 
    alias findc='find  -depth -type f -iname "*.c" | xargs grep --color -nE -ir'
    alias findcc='find  -depth -type f -iname "*.cc" | xargs grep --color -nE -ir'
    alias findcpp='find  -depth -type f -iname "*.cpp" | xargs grep --color -nE -ir'
    alias findsrc='find  -depth -type f -iregex ".*\.\(c\|cc\|cpp\)" | xargs grep --color -nE -ir'
    alias findh='find  -depth -type f -iname "*.h" | xargs grep --color -nE -ir'
    alias findhpp='find  -depth -type f -iname "*.hpp" | xargs grep --color -nE -ir'
    alias findhead='find  -depth -type f -iregex ".*\.\(h\|hpp\)" | xargs grep --color -nE -ir'
fi

if [[ "${unamestr}" == "Darwin" ]]; then
    alias findc='find . -depth -type f -iname "*.c" | xargs grep --color -nE -ir'
    alias findcc='find . -depth -type f -iname "*.cc" | xargs grep --color -nE -ir'
    alias findcpp='find .  -depth -type f -iname "*.cpp" | xargs grep --color -nE -ir'
    alias findsrc='find . -depth -type f -iregex ".*\.\(c\|cc\|cpp\)" | xargs grep --color -nE -ir'
    alias findh='find  . -depth -type f -iname "*.h" | xargs grep --color -nE -ir'
    alias findhpp='find . -depth -type f -iname "*.hpp" | xargs grep --color -nE -ir'
    alias findhead='find . -depth -type f -iregex ".*\.\(h\|hpp\)" | xargs grep --color -nE -ir'

fi

ulimit -c unlimited

[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

