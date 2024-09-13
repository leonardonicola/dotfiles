#!/bin/bash

# Update system and install packages
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm neofetch nodejs neovim htop tldr tmux lua zsh fd ripgrep base-devel fzf zoxide go docker

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set the path to your dotfiles repository
dotfiles_path="$(pwd)"

# Install nvm for Node.js
PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash'

# Source nvm script to make nvm available in the current session
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# Install nvm plugins or Node.js versions if needed
# e.g., nvm install --lts

# Link dotfiles
ln -sf "$dotfiles_path/.zshrc" ~/.zshrc

# Configure tmux
ln -sf "$dotfiles_path/tmux/.tmux.conf" ~/.tmux.conf
git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install and configure Powerlevel10k theme for Oh My Zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Configure Neovim (LazyVim)
mkdir -p ~/.config/nvim
ln -sf "$dotfiles_path/nvim" ~/.config/nvim

echo "Dotfiles setup complete!"
