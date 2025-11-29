# Created by newuser for 5.9

# Paths

export PATH="$PATH:/usr/sbin"
export PATH="$PATH:/usr/local/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH=$PATH:/home/AANN/.spicetify
export PATH=$PATH:/home/AANN/clones/pomo
export PATH=$PATH:/home/AANN/clones/nitch
export PATH=$PATH:/home/AANN/go/bin
export PATH=$PATH:/home/AANN/.cargo/bin

# other exports
export EDITOR=nvim
export HYPRSHOT_DIR='/home/AANN/Pics/SS/'


# aliases
# Previous directory
alias b='cd -'
alias t='trans'
alias y='yazi'
alias shell='nvim ~/.zshrc'

# Parent directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# ---- Eza (better ls) -----
alias ls="eza --color=always --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias ll="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user"
alias ttree='eza --tree --level 2'


alias grt='cd "$(git rev-parse --show-toplevel 2>/dev/null || echo .)"'
alias fo='nvim ~/documents/ME/forgor.md'
alias todo='nvim ~/documents/ME/todo.md'
alias lix='nvim ~/documents/ME/Linx.md'
alias cls='clear'
alias ffs='fuck'
alias pfind='ps aux | grep'
alias la='ls -la --color=auto'
alias grep='grep --color=auto'


alias bas='source ~/.bashrc'
alias zshh='source ~/.zshrc'
alias swim='sudo nvim'
alias nvm='nvim'
alias nm='nvim'
alias zzz='systemctl suspend'
alias ff='fastfetch'
alias :wq='exit'
alias :q='exit'
alias :ZZ='exit'
alias tt='tty-clock -c'
alias now='nvim ~/.bashrc'
alias cd='z'
alias truec='cd ~/.config/ && ls'
alias c='cd ~/dtfiles/ && ls'
alias dies='poweroff'

# Enable zsh-autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



# ---- FZF -----

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --zsh)"



# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"


# -- Use fd instead of fzf --

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# Use fd (https://github.com/sharkdp/fd) for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}


# setting up fzf-git
source ~/clones/fzf-git.sh/fzf-git.sh

export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'eza --tree --color=always {} | head -200'"

# Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf --preview 'eza --tree --color=always {} | head -200' "$@" ;;
    export|unset) fzf --preview "eval 'echo $'{}"         "$@" ;;
    ssh)          fzf --preview 'dig {}'                   "$@" ;;
    *)            fzf --preview "bat -n --color=always --line-range :500 {}" "$@" ;;
  esac
}

# --- setup fzf theme ---
fg="#CBE0F0"
bg="#011628"
bg_highlight="#143652"
purple="#B388FF"
blue="#06BCE4"
cyan="#2CF9ED"

export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple},info:${blue},prompt:${cyan},pointer:${cyan},marker:${cyan},spinner:${cyan},header:${cyan}"

# ----- Bat (better cat) -----

export BAT_THEME=tokyonight_night

# thefuck alias
eval $(thefuck --alias)
eval $(thefuck --alias fk)

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey -e # disable vi mode and do emacs mode
# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward


PS1=$'\n'"%1~ 󰅴  "
