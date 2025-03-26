export ZSH=$HOME/.oh-my-zsh
export BUN_INSTALL="$HOME/.bun"
export PATH=$PATH:$GOBIN:"$BUN_INSTALL/bin:$PATH:$HOME/.local/bin"
# If you come from bash you might have to change your $PATH.
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
CASE_SENSITIVE="true"

plugins=(
	git
	docker-compose
	docker
	git-prompt
  zsh-autosuggestions
  zsh-syntax-highlighting
  starship
)

source $ZSH/oh-my-zsh.sh 

bindkey '^I'   complete-word
bindkey '^[[Z' autosuggest-accept

EZA="exa -l -h --icons --no-time --no-permissions --no-user"

export EDITOR="nvim"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias air='/usr/local/bin/air'
alias cd="z"
alias ls="$EZA"
alias lsa="$EZA -T --git-ignore"
alias vi="nvim"

# pnpm
export PNPM_HOME="/home/popinjay/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/home/popinjay/.bun/_bun" ] && source "/home/popinjay/.bun/_bun"


# Zoxide
eval "$(zoxide init zsh)"

# Starship
eval "$(starship init zsh)"

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform
