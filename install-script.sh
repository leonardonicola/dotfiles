#!/bin/bash

# Install dependencies using pacman
sudo pacman -Syu
sudo pacman -Sy neofetch nodejs neovim htop tldr tmux lua zsh fd ripgrep base-devel fzf zoxide go docker

#Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set the path to your dotfiles repository
dotfiles_path="$(pwd)"

# Install nvm for Node.js (if needed)
PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash'

# Add more plugins as needed
ln -s "$dotfiles_path/.zshrc" ~/.zshrc

# Configure tmux
ln -s "$dotfiles_path/tmux/.tmux.conf" ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Configure nvim (LazyVim)
mkdir -p ~/.config/
ln -s "$dotfiles_path/nvim" ~/.config/nvim

echo "Dotfiles setup complete!"
