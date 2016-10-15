autoload -U compinit && compinit
autoload colors && colors

source ~/.zsh/prompt.zsh
source ~/.zsh/tmuxinator.zsh

export RBENV_VERSION="2.0.0-p645"
export CDPATH=:~/Code/Vagrant/code
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export EDITOR=/usr/local/bin/vim
export SHELL=/usr/local/bin/zsh
export PATH="/usr/local/bin:$PATH"

setopt always_to_end      # When complete from middle, move cursor
setopt append_history     # Append to history file, not overwrite it
setopt auto_cd            # If a command is not in the hash table, and there exists an executable directory by that name, perform the cd command to that directory.
setopt complete_in_word   # Always auto complete, not just at the end
setopt extendedglob       # Extra filename generation features
setopt hist_ignore_dups   # Don't enter command in history if it is duplicate of previous command
setopt hist_find_no_dups  # Don't display duplicates when searching commands
setopt inc_append_history # Append history item as soon as command is executed, rather than waiting until the shell is killed
setopt nobeep             # Kill the fscking beep!
setopt nohup					    # In general, we don't kill background jobs upon logging out
setopt prompt_subst       # parameter expansion, command substitution and arithmetic expansion is performed in prompts

alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias mark="/Applications/Marked.app/Contents/MacOS/Marked"

# fix emacs keys while in tmux
bindkey -e

eval "$(rbenv init -)"
