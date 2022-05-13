
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#source $HOME/.zprofile
#source ~/.profile
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
# ZSH_THEME="bureau"
# ZSH_THEME="amuse"
ZSH_THEME="ys"
# ZSH_THEME=random
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	# git 
# 	autojump 
	# pyenv
	zsh-autosuggestions 
# 	zsh-autocomplete
	# incr
# 	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# source ~/.oh-my-zsh/custom/plugins/incr/incr*.zsh

# source ~/.oh-my-zsh/custom/plugins/autojump/bin/autojump.zsh


# downvideo
alias youdown='youtube-dl --external-downloader aria2c --external-downloader-args "-x 8 -k 1M" '
alias youdown_proxy='youtube-dl --proxy "http://127.0.0.1:8889" --external-downloader aria2c --external-downloader-args "-x 8 -k 1M" '


# npm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"

export PATH="${PATH}:${HOME}/.npm_packages/bin"  


alias webGet="wget  -r -c -np -nH --cut-dirs 2 --restrict-file-names=nocontrol  "

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/sirius/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/sirius/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/sirius/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/sirius/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


alias ml38="conda activate exp38"


# pyenv
# export PATH=~/.pyenv/bin:$PATH
#export PYENV_ROOT=~/.pyenv
#eval "$(pyenv init -)"


# proxy
alias set_https_proxy="export https_proxy=\"http://localhost:8010\""
alias set_http_proxy="export http_proxy=\"http://localhost:8010\""

# 设置setproxy和unsetproxy 可以快捷的开关
# 需要时先输入命令 setproxy
# 不需要时输入命令 unsetproxy
alias set_proxy="export http_proxy=\"socks5://127.0.0.1:1080\"; export http_proxy=\"socks5://localhost:1080\"; echo 'HTTP Proxy on';"
alias unsetproxy="unset http_proxy; unset https_proxy; echo 'HTTP Proxy off';"



alias :q="exit"
alias pxng="proxychains4 -q -f $HOME/.config/proxychains.conf"

alias get_ip="curl cip.cc"

# For fzf 
alias preview="fzf --preview 'bat --color \"always\" {}'"
# export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# export CARGO_HTTP_PROXY="socks5://127.0.0.1:1080"

# 扩展256色 使用有问题，多显示一行执行的应用
# export TERM="screen-256color"
# xset -b

# fnm
export FNM_NODE_DIST_MIRROR=https://mirrors.tuna.tsinghua.edu.cn/nodejs-release/
export PATH=/home/fan/.fnm:$PATH
eval "`fnm env`"

# set proxy
source .proxyrc
