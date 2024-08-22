#!/bin/bash

# setup.sh - Script to set up dotfiles using Homebrew

# Check for Homebrew, install if we don't have it
if ! command -v brew &>/dev/null; then
  echo "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed."
fi

# Update and upgrade Homebrew
echo "Updating Homebrew..."
brew update
echo "Upgrading installed packages..."
brew upgrade

# Install essential packages
echo "Installing essential packages..."
brew install git zsh vim tmux stow

# Install additional packages (optional)
echo "Installing additional packages..."
brew install [other-packages]

# Symlink dotfiles using GNU Stow
echo "Creating symlinks for dotfiles..."
cd ~/.config/
stow vim zsh git tmux

# Set Zsh as the default shell
if [ "$SHELL" != "/bin/zsh" ]; then
  echo "Changing default shell to Zsh..."
  chsh -s /bin/zsh
else
  echo "Zsh is already the default shell."
fi

# Source the Zsh configuration
echo "Sourcing Zsh configuration..."
source ~/.zshrc

echo "Dotfiles setup complete!"
