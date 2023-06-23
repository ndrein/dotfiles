#################################################################
# Znap
#################################################################

# Download Znap, if it's not there yet.
[[ -f ~/Git/zsh-snap/znap.zsh ]] ||
    git clone https://github.com/marlonrichert/zsh-snap.git ~/Git/zsh-snap

source ~/Git/zsh-snap/znap.zsh  # Start Znap

# `znap prompt` makes your prompt visible in less than 12ms!
#znap prompt sindresorhus/pure

# `znap source` automatically downloads and installs your plugins.
znap source marlonrichert/zsh-autocomplete
zstyle ':autocomplete:*' min-delay 0.6  # float


znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting

#znap source ohmyzsh/ohmyzsh plugins/git/git.plugin.zsh
#znap source ohmyzsh/ohmyzsh plugins/aliases/aliases.plugin.zsh

znap source rupa/z z.sh


#################################################################
# vim
#################################################################

export EDITOR=vim

## Remove old vim plugins and install/update the others
#nohup vim -c "PluginClean" -c "PluginInstall!" </dev/null >/dev/null 2>&1 &
#disown


################################################################################
# Aliases
###############################################################################

alias commit='git commit -m "AUTO: commit all files"'


################################################################################
# Functions
###############################################################################


#################################################################
# history
#################################################################

export HISTSIZE=100000


###############################################################################
# Run instance specific configuration
# This should be the last section of this file
###############################################################################

instance_specific="$HOME/.instance_specific.sh"

if [[ -r ${instance_specific} ]]; then
    source ${instance_specific}
fi

