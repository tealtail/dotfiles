#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

# Install homebrew packages
brew install grc coreutils spark z hub

# Install homebrew cask
brew tap caskroom/cask

# fonts
brew tap caskroom/fonts
brew cask install font-source-code-pro
brew cask install font-meslo-lg

exit 0
