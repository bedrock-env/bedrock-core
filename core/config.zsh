export LSCOLORS="exfxcxdxbxegedabagacad"
# export LSCOLORS="gxBxhxDxfxhxhxhxhxcxcx"
export CLICOLOR=true
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

autoload -Uz compinit
compinit

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF
setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

zle -N newtab

bindkey -e # emacs key bindings

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[^N' newtab
bindkey '^?' backward-delete-char
bindkey "^[[3~" delete-char

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Zle-Widgets
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Zle-Builtins
# In addition to these names, either ‘emacs’ or ‘viins’ is also linked to the
# name ‘main’. If one of the VISUAL or EDITOR environment variables contain the
# string ‘vi’ when the shell starts up then it will be ‘viins’, otherwise it
# will be ‘emacs’. bindkey’s -e and -v options provide a convenient way to
# override this default choice.
# bindkey -v # vim key bindings
