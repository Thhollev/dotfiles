#
# ZSH CONFIG
#

# Path to your oh-my-zsh installation.
export ZSH=/home/thomas/.oh-my-zsh

# Set name of the theme to load.
if [ -z "$DISPLAY" ]; then
	ZSH_THEME="bureau"
else
	ZSH_THEME="agnoster"
fi

# Add git plugin
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Common aliases with bash
source $HOME/.aliases

export VISUAL=vim

# Add ssh key to agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-session
fi
if [[ "$SSH_AGENT_PID" == "" ]]; then
    eval "$(<~/.ssh-agent-session)"
fi
