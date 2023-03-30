# OhMyZsh: https://ohmyz.sh/#install
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gozilla"
plugins=(
	git 
	golang 
	vscode
	zsh-autosuggestions
	web-search
)

if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s` > /dev/null
  ssh-add "$HOME/.ssh/gh" > /dev/null
fi

if [ -e $HOME/.zsh_aliases ]; then
  source $HOME/.zsh_aliases
fi

source $ZSH/oh-my-zsh.sh

# linuxbrew Site: https://docs.brew.sh/Homebrew-on-Linux
export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"

#export PYENV_ROOT="$HOME/.pyenv"
#command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"

export PATH="${PATH}:~/.local/bin"
export PATH="${PATH}:${HOME}/go/bin"
export PATH="${PATH}:${HOME}/.local/bin"

# NVM Repo: https://github.com/nvm-sh/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Windows Extras
export PATH="$PATH:/mnt/c/Users/GregAF/AppData/Local/Programs/Microsoft VS Code/bin"

