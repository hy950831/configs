# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/hyman/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="aussiegeek"
ZSH_THEME="gentoo"
# ZSH_THEME="bira"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.

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
plugins=(git z brew)

source $ZSH/oh-my-zsh.sh

fpath+=~/.zfunc

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
export PATH=~/bin:/usr/local/bin:${GOPATH//://bin}:$PATH

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='nvim'
alias vi=vim
alias f=vim
# alias vim=nvim
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
alias dif=icdiff
alias prolog='swipl'

# export JAVA_TOOL_OPTIONS=-Duser.language=en
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home'

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias 'runlinux'='docker start hyman&& docker exec -it hyman zsh'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 40% --reverse --border'

alias ag='ag --path-to-ignore ~/.ignore'
alias ssd2='cd /Volumes/SSD2'
alias gdb-os='gdbgui -g os161-gdb kernel'
alias py='pypy3'

export PATH="/usr/local/opt/node@8/bin:$PATH"
# export PATH="/Developer/NVIDIA/CUDA-9.0/bin:$PATH"
# export DYLD_LIBRARY_PATH="/Developer/NVIDIA/CUDA-9.0/lib:$DYLD_LIBRARY_PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cabal/bin:$PATH"

export CUDA_HOME=/usr/local/cuda
export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:/usr/local/cuda/extras/CUPTI/lib
export LD_LIBRARY_PATH=$DYLD_LIBRARY_PATH
export PATH=$DYLD_LIBRARY_PATH:$PATH:/Developer/NVIDIA/CUDA-9.0/bin

# Highlighting config
ZSH_HIGHLIGHT_STYLES[path]='none'
export PATH="/usr/local/sbin:$PATH"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"


alias container='make -C /Users/hyman/Documents/projects/seL4/seL4-CAmkES-L4v-dockerfiles user HOST_DIR=$(pwd)'
export PATH="/usr/local/opt/llvm/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/llvm/lib"
export CPPFLAGS="-I/usr/local/opt/llvm/include"
export PATH="/usr/local/opt/binutils/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

alias cr="cargo run"
alias cb="cargo build"
alias cbr="cargo build --release"
