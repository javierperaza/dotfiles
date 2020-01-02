#!/usr/bin/env bash
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
#brew install aircrack-ng
#brew install bfg
#brew install binutils
#brew install binwalk
#brew install cifer
#brew install dex2jar
#brew install dns2tcp
#brew install fcrackzip
#brew install foremost
#brew install hashpump
#brew install hydra
#brew install john
#brew install knock
#brew install netpbm
#brew install nmap
#brew install pngcheck
#brew install socat
#brew install sqlmap
#brew install tcpflow
#brew install tcpreplay
#brew install tcptrace
#brew install ucspi-tcp # `tcpserver` etc.
#brew install xpdf
#brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
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

# other
# brew cask install keepassxc
brew cask install apache-directory-studio
brew cask install minikube
brew cask install postman
brew install aspell
brew install dos2unix
brew install fcrackzip
brew install maven
brew install mysql
brew install openssl
brew install perl
#brew install php
brew install python
brew install readline
brew install sqlite
brew install telnet
brew install tomcat
brew install wget

brew install adns
brew install apr
brew install apr-util
brew install bash-completion
brew install freetds
brew install freetype
brew install gcc
brew install gdbm
brew install gettext
brew install glib
brew install gmp
brew install gnutls
brew install helm
brew install icu4c
brew install ilmbase
brew install isl
brew install jasper
brew install jpeg
brew install kubernetes-cli
brew install kubernetes-helm
brew install ldns
brew install libassuan
brew install libde265
brew install libdnet
brew install libevent
brew install libffi
brew install libgcrypt
brew install libgpg-error
brew install libheif
brew install libidn2
brew install libksba
brew install libmpc
brew install libomp
brew install libpng
brew install libpq
brew install libssh
brew install libtasn1
brew install libtiff
brew install libtool
brew install libunistring
brew install libusb
brew install libyaml
brew install libzip
brew install little-cms2
brew install lz4
brew install lzo
brew install mcrypt
brew install mhash
brew install minikube
brew install mpfr
brew install msodbcsql17
brew install mssql-tools
brew install mysql-client
brew install nettle
brew install npth
brew install openexr
brew install openjpeg
brew install openvpn
brew install p11-kit
brew install pcre
brew install pcre2
brew install php@5.6
brew install pinentry
brew install pkcs11-helper
brew install pkg-config
brew install pmd
brew install python@2
brew install qt
brew install ruby
brew install shared-mime-info
brew install spotbugs
brew install ssdeep
brew install toxiproxy
brew install unbound
brew install unixodbc
brew install webp
brew install x265

# Remove outdated versions from the cellar.
brew cleanup
