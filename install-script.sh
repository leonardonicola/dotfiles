#!/bin/bash

if ! command -v brew &>/dev/null; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Install dependencies using Homebrew (macOS)
brew install neofetch node nvim tmux lua fd ripgrep

# Install dependencies (adjust for your package manager)
# e.g., sudo apt-get install neofetch onefetch htop wget nodejs npm ripgrep tmux lua fzf fd-find exa bat

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
