export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gozilla"
plugins=(
	aws
	colorize
	git
	gh
	golang
	nvm
	terraform
	vscode
	zsh-autosuggestions
	zsh-syntax-highlighting
)

if [ -e $HOME/.zsh_aliases ]; then
  source $HOME/.zsh_aliases
fi

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

source $ZSH/oh-my-zsh.sh
