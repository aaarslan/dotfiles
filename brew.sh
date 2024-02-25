#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Note: Add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH` in your shell configuration to use these utilities by default.
brew install coreutils
echo 'export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"' >> ~/.zshrc

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install a modern version of Bash and Bash completion.
brew install bash
brew install bash-completion@2

# Switch to using brew-installed bash as default shell, after confirming with the user.
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  read -p "Do you want to change your default shell to the brew-installed bash? [y/N] " response
  if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
    echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
    chsh -s "${BREW_PREFIX}/bin/bash";
    echo "Shell changed to brew-installed bash."
  fi
fi;

# Install `wget`.
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# Additional tools for improved shell experience.
brew install atuin
brew install bash-snippets
brew install bat
brew install gabotechs/taps/dep-tree
brew install eza
brew install node
brew install fzf
brew install starship
brew install tldr
brew install zoxide
brew install ripgrep
brew install hadolint

# Install fonts
brew tap homebrew/cask-fonts
# Replace `font-monaspace` with the correct font name. Example:
brew install --cask font-monaspace

# Remove outdated versions from the cellar.
brew cleanup

echo "Installation complete. Please restart your terminal for all changes to take effect."
