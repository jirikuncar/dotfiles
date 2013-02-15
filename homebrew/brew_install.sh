#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Install Homebrew
if test ! $(which brew)
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/installation"
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
  brew doctor
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade
