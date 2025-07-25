#!/usr/bin/sh

# Set the path to your dotfiles repository
dotfiles_path="$(pwd)"

# Update system and install packages
sudo pacman -Syu --noconfirm

# Packages
sudo pacman -S --noconfirm nvim nodejs btop tldr lua luarocks luacheck zsh fd ripgrep base-devel fzf zoxide go docker starship eza ttf-jetbrains-mono-nerd noto-fonts-emoji waybar pavucontrol nwg-look thunar swaync hyprpaper npm pnpm git github-cli discord wl-clipboard lazygit refind hyprlock hyprland php-gd php php-pgsql docker-compose

# Link zsh
ln -sf "$dotfiles_path/.zshrc" ~/.zshrc

# Set zsh to default shell
chsh -s $(which zsh)

# Zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install nvm for Node.js
PROFILE=/dev/null bash -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash'

# Source nvm script to make nvm available in the current session
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Install nvm plugins or Node.js versions
nvm install --lts

# Commitizen
pnpm add -g commitizen cz-conventional-changelog

echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc

# Configure tmux and TPM plugin
ln -sf "$dotfiles_path/tmux/.tmux.conf" ~/.tmux.conf
git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Hyprland
rm -rf ~/.config/hypr && ln -sf "$dotfiles_path/.config/hypr" ~/.config/hypr

# Alacritty
ln -sf "$dotfiles_path/.config/alacritty" ~/.config/alacritty

# Lazygit
ln -sf "$dotfiles_path/.config/lazygit" ~/.config/lazygit

ln -sf "$dotfiles_path/.config/wofi" ~/.config/wofi

# Waybar
ln -sf "$dotfiles_path/.config/waybar" ~/.config/waybar

# Nvim
ln -sf "$dotfiles_path/.config/nvim" ~/.config/nvim

# Fonts
ln -sf "$dotfiles_path/.config/fontconfig" ~/.config/fontconfig

# Btop
ln -sf "$dotfiles_path/.config/btop" ~/.config/btop

# Swaync
ln -sf "$dotfiles_path/.config/swaync" ~/.config/swaync

# Starship
ln -sf "$dotfiles_path/.config/starship.toml" ~/.config/starship.toml

ln -sf "$dotfiles_path/.XCompose" ~/.XCompose

# Discord
mkdir ~/.config/discord && ln -sf "$dotfiles_path/.config/discord/settings.json" ~/.config/discord/settings.json

# Update fonts
fc-cache --really-force

# Update zsh
source ~/.zshrc

echo "✅ Dotfiles setup complete!"
echo "---------------------------"
echo -e "Don't forget to: \n"
echo "1 - Reboot the system in order to reflect changes"
echo "2 - Run tmux and install the plugins with <C-b> + I"
echo "3 - Run nvim and run :Lazy sync and :MasonInstallAll"
