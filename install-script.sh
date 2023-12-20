#!/bin/bash

# Install dependencies using apt install
sudo apt update
sudo apt install neofetch nodejs nvim tmux lua fd ripgrep build-essential

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
ln -s "$dotfiles_path/nvim" ~/.config/nvim

echo "Dotfiles setup complete!"
