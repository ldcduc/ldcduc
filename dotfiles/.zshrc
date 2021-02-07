# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ducle/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# DISABLE_MAGIC_FUNCTIONS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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
alias zshrc="vim ~/.zshrc; source ~/.zshrc; cp ~/.zshrc ~/.repos/ldcduc/dotfiles"
alias vimrc="vim ~/.vimrc; cp ~/.vimrc ~/.repos/ldcduc/dotfiles"
alias nvimrc="nvim ~/.config/nvim/init.vim; cp ~/.config/nvim/init.vim ~/.repos/ldcduc/dotfiles/.config/nvim"
alias karabiner="vim ~/.config/karabiner/karabiner.json; cp ~/.config/karabiner/karabiner.json ~/.repos/ldcduc/dotfiles/.config/karabiner/karabiner.json"
alias etchosts="sudo vim /etc/hosts"
## Commands
alias cl="clear"
## Change dir
alias icloud="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias oned="cd ~/OneDrive"
alias repo="cd ~/.repos"
alias app="open /Applications"
## Repos
alias ldcduc="cd ~/.repos/ldcduc"
alias til="cd ~/.repos/today-I-learned"
alias journal="cd ~/.repos/journal"
alias leet="cd ~/.repos/leetcode-training"
alias sol='bash ~/.repos/leetcode-training/create_source_code_file.sh'
alias tutor="cd ~/Tutoring-2020"
alias english="cd ~/.repos/journal/Learning_Languages/English"
alias chinese="cd ~/.repos/journal/Learning_Languages/Chinese"
## Open with apps
alias md="macdown"
alias chrome="open -a 'Google Chrome'"
alias safari="open -a 'Safari'"
alias vscode="open -a 'Visual Studio Code'"
alias nv="nvim"
## Chatting
alias shitpost="safari https://discord.com/channels/786607287074029589/786609740243009547"
alias em="safari https://www.facebook.com/messages/t/100010143877666/"
## Journaling
alias love="cp ~/Library/Mobile\ Documents/com~apple~CloudDocs/love.md ~/Library/Mobile\ Documents/com~apple~CloudDocs/.bk_love.md; macdown ~/Library/Mobile\ Documents/com~apple~CloudDocs/love.md; cp ~/Library/Mobile\ Documents/com~apple~CloudDocs/love.md ~/OneDrive/love.md"
alias lovev="cp ~/Library/Mobile\ Documents/com~apple~CloudDocs/love.md ~/Library/Mobile\ Documents/com~apple~CloudDocs/.bk_love.md; vim ~/Library/Mobile\ Documents/com~apple~CloudDocs/love.md; cp ~/Library/Mobile\ Documents/com~apple~CloudDocs/love.md ~/OneDrive/love.md"
alias lovevs="cp ~/Library/Mobile\ Documents/com~apple~CloudDocs/love.md ~/Library/Mobile\ Documents/com~apple~CloudDocs/.bk_love.md; open -a 'Visual Studio Code' ~/Library/Mobile\ Documents/com~apple~CloudDocs/love.md; cp ~/Library/Mobile\ Documents/com~apple~CloudDocs/love.md ~/OneDrive/love.md"
# alias love="cp ~/OneDrive/love.md ~/OneDrive/.bk_love.md; macdown ~/OneDrive/love.md"
# alias lovev="cp ~/OneDrive/love.md ~/OneDrive/.bk_love.md; vim ~/OneDrive/love.md"
alias 2021="macdown ~/.repos/journal/my-2021.md"
alias 2021v="vim ~/.repos/journal/my-2021.md"
alias 2021vs="open -a 'Visual Studio Code' ~/.repos/journal/my-2021.md"
## Temporary
alias efi="cd ~/.repos/ldcduc/hackintosh/EFI\ testing/CLOVER"
## Virtual environment python
alias py="python3"
alias py2="python2"
alias py3="python3"
alias bot="source ~/Library/Mobile\ Documents/com~apple~CloudDocs/bot-dev/venv/bin/activate; cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/bot-dev"
## ssh
alias hackintosh="ssh ducle@myhomepc -p 13285"
alias hackintoshlan="ssh ducle@myhackintosh"
alias ubuntu="ssh jarvis@myhomepc -p 13287"
alias ubuntulan="ssh jarvis@myubuntu"
alias burp="cd ~/burp_suite_pro_v2020.11.2; java --illegal-access=permit -Dfile.encoding=utf-8 -javaagent:BurpSuiteLoader_v2020.11.2.jar -noverify -jar burpsuite_pro_v2020.11.2.jar"





# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

clear
