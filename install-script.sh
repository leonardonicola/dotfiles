#!/bin/bash

# Install dependencies using pacman
sudo pacman -Syu
sudo pacman -Sy neofetch nodejs neovim tmux lua zsh fd ripgrep base-devel
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

# Configure nvim (LazyVim)
mkdir -p ~/.config/
ln -s "$dotfiles_path/nvim" ~/.config/nvim

echo "Dotfiles setup complete!"
