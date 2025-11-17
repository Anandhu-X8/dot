# Created by newuser for 5.9

# Paths

export PATH="$PATH:/usr/sbin"
export PATH=$PATH:/home/AANN/.spicetify
export PATH=$PATH:/home/AANN/gitclones/pomo

# other exports
export EDITOR=nvim
export HYPRSHOT_DIR='/home/AANN/Pics/SS/'


# aliases
# Previous directory
alias b='cd -'

# Parent directories
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias grt='cd "$(git rev-parse --show-toplevel 2>/dev/null || echo .)"'
alias fo='nvim ~/documents/ME/forgor.md'
alias lix='nvim ~/documents/ME/Linx.md'
alias cls='clear'
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
alias cccc='cd ~/.config/ && ls'
alias ccc='cd ~/dotfiles/ && ls'
alias dies='poweroff'


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


# --- setup fzf theme ---
fg="#CBE0F0"
bg="#011628"
bg_highlight="#143652"
purple="#B388FF"
blue="#06BCE4"
cyan="#2CF9ED"

export FZF_DEFAULT_OPTS="--color=fg:${fg},bg:${bg},hl:${purple},fg+:${fg},bg+:${bg_highlight},hl+:${purple},info:${blue},prompt:${cyan},pointer:${cyan},marker:${cyan},spinner:${cyan},header:${cyan}"




PS1=$'\n'"%1~ 󰅴  "
