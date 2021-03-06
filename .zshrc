# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#enables color for iTerm
export TERM=xterm-256color

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# font mode
POWERLEVEL9K_MODE='nerdfont-complete'

# Prompt elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs time battery)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs load ram_joined time battery)

# Prompt settings
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true

# Dirs
POWERLEVEL9K_DIR_HOME_BACKGROUND='green'
POWERLEVEL9K_DIR_HOME_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='blue'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='yellow'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='black'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"

# OS segment
POWERLEVEL9K_OS_ICON_BACKGROUND='black'
#POWERLEVEL9K_LINUX_ICON='%F{cyan}\uE73A%f'

# Battery
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='red'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='yellow'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='green'
POWERLEVEL9K_BATTERY_DISCONNECTED_FOREGROUND='blue'

# Time
# POWERLEVEL9K_TIME_FORMA="%D{\uF017 %T}" #  15:29:33
POWERLEVEL9K_TIME_BACKGROUND='green'

# Python
POWERLEVEL9K_PYTHON_ICON='\uE606'

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

# enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	autojump
	python
	common-aliases
)		

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

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

# alias for scp operations on groupserver:
function scp-up() {
  scp -P 502 ./$1 kchen@202.120.1.121:/home/kchen/ifnet/$2
}

function scp-down() {
  scp -P 502 kchen@202.120.1.121:/home/kchen/ifnet/$1 ./$2
} 

# Set python virtual environment
export WORKON_HOME=~/Envs/
if [ -e $HOME/.local/bin/virtualenvwrapper.sh ]; then 
	source $HOME/.local/bin/virtualenvwrapper.sh 
elif [ -e /usr/local/bin/virtualenvwrapper.sh ]; then 
	source /usr/local/bin/virtualenvwrapper.sh 
fi

# set localhost display for command only systems
# export DISPLAY=localhost:0.0

# set autojump if installed mannully
#[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

# set autojump if installed with apt-get install
#. /usr/share/autojump/autojump.sh

# set term color on mintty
#source ~/mintty-colors-solarized/sol.dark

# set autostart of tmux on minitty
#[[ -z "$TMUX" && -n "$USE_TMUX" ]] && {
#	[[ -n "$ATTACH_ONLY" ]] && {
#		tmux a 2>/dev/null || {
#    	cd && exec tmux
#		}
#		exit
#	}
#	tmux new-window -c "$PWD" 2>/dev/null && exec tmux a
#	exec tmux
#}
export PATH=~/install/linux-`uname -r | sed 's/-.*//'`/tools/perf:$PATH
export PATH="/Applications/NEURON-7.6/nrn/x86_64/bin":$PATH #added by NEURON installer
export PYTHONPATH="/Applications/NEURON-7.6/nrn/lib/python":$PYTHONPATH #added by NEURON installer
