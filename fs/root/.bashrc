. /etc/profile

#v1.0.5 need to override TERM setting in /etc/profile...
#export TERM=xterm
# ...v2.13 removed.

#export HISTFILESIZE=2000
#export HISTCONTROL=ignoredups
#...v2.13 removed.
PS1="\[\e]2;\w\a\e[34m\]$USER\\$ \[\e[0m\]"

# enable Pkg 1.9.22 TAB completion
export PKG_TAB_COMPLETION=true
. /etc/bash_completion.d/pkg 2>/dev/null

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"