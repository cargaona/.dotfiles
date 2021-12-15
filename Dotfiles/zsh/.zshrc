################################################################################################
# Env Variables
################################################################################################
export MY_FOLDER="/home/canus"
export PASSWORD_STORE_DIR=$MY_FOLDER/Pass
export LANG="en_US.UTF-8"
export LC_ALL=en_US.UTF-8
export TERM="tmux-256color"

################################################################################################
# Several programs configuration
################################################################################################
# Fuzzy Finder (aka FZF)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# The fuck (terminal typo fixer)
eval $(thefuck --alias)
# The next line enables autojump
[[ -s $HOME/.cache/yay/autojump-git/pkg/autojump-git/etc/profile.d/autojump.sh ]] && source $HOME/.cache/yay/autojump-git/pkg/autojump-git/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

################################################################################################
# Antigen
################################################################################################
source ~/.zsh/antigen.zsh
source ~/.zsh/.theme
antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle autojump
antigen theme romkatv/powerlevel10k
antigen bundle common-aliases
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle docker
antigen bundle docker-compose
antigen bundle golang
antigen bundle python
antigen apply

################################################################################################
# Custom PATH  settings
################################################################################################
export PATH="$MY_FOLDER/Scripts/bin-scr:$PATH" # Custom Scripts
export PATH="$HOME/.pyenv/bin:$PATH"           # Pyenv
export PATH="$HOME/.cargo/bin:$PATH"           # Rust
export PATH="$HOME/go/bin/:$PATH"              # Go
export PATH="$HOME/.local/bin:$PATH"           # ~/.local
export PATH="/usr/local/bin:$PATH"             # /usr/local
export PATH="/usr/bin:$PATH"                   # /usr/local

################################################################################################
# User configuration
################################################################################################

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='nvim'
fi

################################################################################################
# SSH Configuration
################################################################################################
export SSH_KEY_PATH="~/.ssh/rsa_id"

################################################################################################
# SSH Configuration with GPG
################################################################################################
#echo [KEYGRIP] >> ~/.gnupg/sshcontrol
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
#gpgconf --launch gpg-agent

################################################################################################
# Alias
################################################################################################
alias mf="cd $MY_FOLDER"
alias xf="mpg123 --quiet $MY_FOLDER/Library/sounds/xfiles.mp3"
alias docker="sudo docker"
alias docker-compose="sudo docker-compose"
alias ct="mpg123 --quiet $MY_FOLDER/Library/sounds/ct.mp3"
alias qn="mpg123 --quiet $MY_FOLDER/Library/sounds/quienteconoce.mp3"
alias mi="mpg123 --quiet $MY_FOLDER/Library/sounds/monster_inc.mp3"
alias al="mpg123 --quiet $MY_FOLDER/Library/sounds/olx.mp3"
alias fcd="mpg123 --quiet $MY_FOLDER/Library/sounds/final_countdown.mp3"
alias bf="mpg123 --quiet $MY_FOLDER/Library/sounds/back2thefuture.mp3"
alias ed="mpg123 --quiet $MY_FOLDER/Library/sounds/circus.mp3"
alias dm="mpg123 --quiet $MY_FOLDER/Library/sounds/deployersmal.mp3"
alias copy='xclip -sel clip'

##############################################################################
# History Configuration
##############################################################################
export SAVEHIST=5000           #Number of history entries to save to disk
export HISTSIZE=5000           #How many lines of history to keep in memory
export HISTFILE=~/.zsh_history #Where to save history to disk
#HISTDUP=erase               #Erase duplicates in the history file
setopt appendhistory    #Append history to the history file (no overwriting)
setopt sharehistory     #Share history across terminals
setopt incappendhistory #Immediately append to the history file, not just when a term is killed

##############################################################################
# MacBook Pro configuration
##############################################################################
# Just in case the unfortunate way Mac has to "Supr" does not work on your terminal.. then here's the fix
#bindkey "^[[3~" delete-char

################################################################################################
# Languae environments setup
################################################################################################
#Node version manager (nvm)
#export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#source ~/.nvm/nvm.sh
# Python version manager (Pyenv)
export BROWSER="brave"
alias vim="nvim"
alias tf="terraform"
eval "$(pyenv init --path)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh