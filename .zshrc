# Path to your oh-my-zsh installation.
export ZSH=/Users/chris/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell" # ->
# ZSH_THEME="agnoster" # Christain's theme
# ZSH_THEME="mortalscumbag"
# ZSH_THEME="obraun" # way to much info
# ZSH_THEME="amuse" # Watch
# ZSH_THEME="muse" # |>
# ZSH_THEME="daveverwer" # ce-mbp:~ $
# ZSH_THEME="sorin" # ~ >$
# ZSH_THEME="random"

# Optionally set DEFAULT_USER in ~/.zshrc to your regular username to hide the
#“user@hostname” info when you’re logged in as yourself on your local machine.
# DEFAULT_USER=`whoami`

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=12

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Ignore git st alias for status
CORRECT_IGNORE='st'

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


# DONT use zsh-nvm here - NVM issue with linters
# Learn more https://github.com/lukechilds/zsh-nvm
# Learn more http://stackoverflow.com/questions/32069548/nvm-cannot-load-default-node-with-default-alias-set

# plugins=(zsh-nvm git extract osx brew)
plugins=(z git extract osx brew zsh-better-npm-completion zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/Users/chris/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/opt/ImageMagick/bin:/usr/local/bin"
# export MAGICK_HOME="$HOME/bin/ImageMagick-7.0.5"
# export PATH="$MAGICK_HOME/bin:$PATH"

# export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"
# export DISPLAY=:0

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
# For a full list of active aliases, run `alias`.subl .

#
# Example aliases
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
# redefine prompt_context for hiding user@hostname

# This will get my ip address
alias myip="ipconfig getifaddr 'en0'"

# For trash-cli
# https://github.com/sindresorhus/trash-cli
alias rm="trash"

# Sublime set as default in .gitconfig
# alias st="subl"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code - Insiders.app/Contents/Resources/app/bin"

# For Shopify http://themekit.cat/install/
# export PATH=$PATH:~/Applications/bin


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# source ~/.iterm2_shell_integration.`basename $SHELL`

# FOR RVM
# export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Yarn
# export PATH="$PATH:$HOME/.yarn/bin"


#### NODE AND NVM NOTES

# Using this: https://github.com/creationix/nvm#installation
# Learn more: https://github.com/SublimeLinter/SublimeLinter-jshint/issues/10

# LOAD NVM IN ~/.ZSHENV

# EITHER THIS
# [[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh ## USING THIS

# OR THIS - But not both
# export NVM_DIR="/Users/chris/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

####### END NVM .ZSHENV #####

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


DEFAULT_USER="chris"

#### POSTGRES ####

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.6/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="--extended"
