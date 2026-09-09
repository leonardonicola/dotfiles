export ZSH=$HOME/.oh-my-zsh
export BUN_INSTALL="$HOME/.bun"
export EDITOR="nvim"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"

export PATH="$PATH:$GOBIN:$BUN_INSTALL/bin:$HOME/.local/bin"
alias pip="python3 -m pip"

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

EZA="eza -l -h --icons --no-time --no-permissions --no-user"

export NVM_DIR="$HOME/.nvm"
    [ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

alias air='/usr/local/bin/air'
alias cd="z"
alias ls="$EZA"
alias tree="$EZA -T --git-ignore --no-filesize"
alias vi="nvim"
alias neovim="nvim"
alias cb="wl-copy --type text/plain"

# pnpm
export PNPM_HOME="/opt/homebrew/bin"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# bun completions
[ -s "/home/popinjay/.bun/_bun" ] && source "/home/popinjay/.bun/_bun"

# Zoxide
eval "$(zoxide init zsh)"

# Starship
eval "$(starship init zsh)"

autoload -U +X bashcompinit && bashcompinit

# terraform
complete -o nospace -C /usr/bin/terraform terraform
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
export DYLD_LIBRARY_PATH="/opt/homebrew/opt/expat/lib:$DYLD_LIBRARY_PATH"

[[ "$TERM_PROGRAM" == "kiro" ]] && . "$(kiro --locate-shell-integration-path zsh)"
