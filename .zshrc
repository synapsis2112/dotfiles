# Sets the pwd as my prompt
export PS1='$(pwd)\$ '

# Allow 5000 items in history
export HISTSIZE=5000

# Set the history file
export HISTFILE="$HOME/.history"

# History won't be saved without the following command
export SAVEHIST=$HISTSIZE

# Allows me to use single quotes on the PS1 and dynamically updates the prompt
# Without this setting the pwd never actually updates
setopt promptsubst

# Don't write duplicate entries in the history file
setopt hist_save_no_dups

# Delete old recorded entry if new entry is a duplicate
setopt hist_ignore_all_dups

# Do not enter command lines into the history list if they are duplicates of the previous event
setopt hist_ignore_dups

# Appends every command to the history file
setopt inc_append_history

# Allows all of the different terminals history to be shared with each other.
# This is useful because I ctrl-r a lot.
setopt share_history

# Add /usr/local/sbin to my PATH since things like iftop get installed there
export PATH=$PATH:/usr/local/sbin

# Aliases
alias ls='ls -alrtF --color=auto'
alias ps='ps -eo user,pid,ppid,pcpu,time,rss,vsz,command'
if [ $(uname -s) = Darwin ]; then
  alias ls='ls -alrtFG'
  alias ps='ps -axo user,pid,ppid,%cpu,time,rss,vsz,command'
fi
