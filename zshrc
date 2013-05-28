export ZSH_CONFIG_DIR=~/dotfiles/zsh

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH_CONFIG_DIR/lib/*.zsh) source $config_file

# Load and run compinit
autoload -Uz compinit
compinit -i
