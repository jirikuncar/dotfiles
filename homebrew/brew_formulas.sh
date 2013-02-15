#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install python
brew install python --framework --universal
# http://www.thisisthegreenroom.com/2011/installing-python-numpy-scipy-matplotlib-and-ipython-on-lion/
# export PATH=/usr/local/share/python:$PATH
# export PATH=/usr/local/bin:$PATH
# cd /System/Library/Frameworks/Python.framework/Versions && sudo rm Current
# sudo ln -s /usr/local/Cellar/python/2.7.3/Frameworks/Python.framework/Versions/Current

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
echo "Might want to create aliases for g* comands (do in it for you by default)"
#alias locate="glocate"
#alias find="gfind"
#alias xargs="gxargs"

# Install Bash 4
brew install bash bash-completion

#Lazy way to change directories
brew install autojump

# Install wget with IRI support
brew install wget --enable-iri

#MacVim
brew install macvim
echo "Remeber to link it to /Applications ln -s /usr/local/Cellar/macvim/version/MacVim.app /Applications"
echo "Remeber create an alias for vim pointing to macvim"
# Exuberant ctags, to be used by Tagbar vim plugin
brew install ctags
# ACK
brew install ack

# Everything else
brew install git
echo "Remember to mv /usr/bin/git /usr/bin/git_old (the one that is installed with Xcode) so we use the brew version"
brew install tmux
brew install reattach-to-user-namespace
brew install lynx
