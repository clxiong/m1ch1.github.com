# Use vi mode.
set -o vi

# Color ls
alias ls='ls --color'

if [ -d /usr/lib/ccache ]; then
  PATH=/usr/lib/ccache:/usr/lib/ccache:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/X11R6/bin
fi

export CCACHE_PREFIX=distcc
export CCACHE_BASEDIR=/compile/ccache
export CCACHE_DIR=/compile/ccache
alias make='make -j 16'
export SVN_EDITOR=vim
