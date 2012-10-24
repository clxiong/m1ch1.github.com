##############################################################################
# History Configuration
##############################################################################
HISTSIZE=10000           # How many lines of history to keep in memory
HISTFILE=~/.zsh_history  # Where to save history to disk
SAVEHIST=10000           # Number of history entries to save to disk
HISTDUP=erase            # Erase duplicates in the history file
setopt appendhistory     # Append history to the history file (no overwriting)
setopt sharehistory      # Share history across terminals
setopt incappendhistory  # Immediately append to the history file, not just when a term is killed

export CCACHE_PREFIX=distcc
export CCACHE_BASEDIR=/compile/ccache
export CCACHE_DIR=/compile/ccache
alias make='make -j 16'
export SVN_EDITOR=vim

export PATH=$PATH:/usr/lib/ccache

alias ls="ls -F --color=auto"
autoload -U colors && colors
PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%1~ %{$reset_color%}%# "

# vi mode
bindkey -v
bindkey "^R" history-incremental-search-backward
zle-keymap-select () {
  if [ $KEYMAP = vicmd ]; then
    if [[ $TERM != 'screen' ]]; then
      echo -ne "\033]12;Cyan\007"
    else
      echo -ne '\033P\033]12;cyan\007\033\\'
    fi
  else
    if [[ $TERM != 'screen' ]]; then
      echo -ne "\033]12;Grey\007"
    else
      echo -ne '\033P\033]12;grey\007\033\\'
    fi
  fi
}
zle-line-init () {
  zle -K viins
  if [[ $TERM != 'screen' ]]; then
    echo -ne "\033]12;Grey\007"
  else
    echo -ne '\033P\033]12;grey\007\033\\'
  fi
}
zle -N zle-keymap-select
zle -N zle-line-init

