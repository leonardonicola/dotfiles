#!/bin/bash

# Update system and install packages
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm neofetch neovim nodejs htop tldr tmux lua zsh fd ripgrep base-devel fzf zoxide go docker starship

# Set the path to your dotfiles repository
dotfiles_path="$(pwd)"

# Link zsh 
ln -sf "$dotfiles_path/.zshrc" ~/.zshrc

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install nvm for Node.js
PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash'

# Source nvm script to make nvm available in the current session
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Install nvm plugins or Node.js versions
nvm install --lts

# Configure tmux and TPM plugin
ln -sf "$dotfiles_path/tmux/.tmux.conf" ~/.tmux.conf
git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

source ~/.zshrc

echo "✅ Dotfiles setup complete!"
echo "---------------------------"
echo -e "Don't forget to: \n"
echo "1 - Run tmux and install the plugins with <C-b> + I"
echo "2 - Run nvim and run :Lazy sync and :MasonInstallAll"
