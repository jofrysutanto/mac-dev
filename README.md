# Mac Machine Setup Guide

Step-by-step guide on setting up new Mac machine - targeted for Web Developers.

Heavily inspired by this article by Tania Rascia: https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/

# Steps

## OSX Preferences

> For the `screencapture` command to work, make sure a folder called 'Screenshots' is available on Desktop

```
chflags nohidden ~/Library
defaults write com.apple.finder AppleShowAllFiles YES
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.screencapture location ~/Desktop/Screenshots/
```

You will need to restart UI shell by running this command
```
killall SystemUIServer
```

Relaunch your Finder by holding Option + Right-Click on Finder

Additional preferences settings (from System Preferences menu)
- Go to Power settings to show battery level (Macbook)

## Node

Install NVM 

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.2/install.sh | bash
```

## Homebrew

The ultimate tool to install anything in Mac

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```
echo >> /Users/jofry/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/jofry/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

## App Store CLI

```
brew install mas
```

## Copy `Dotfiles/`

Copy the content of `Dotfiles/` directory into current user directory (`~/`)

## Installing brew bundle

```
brew bundle install
```

## Install composer

This step is optional if Herd is installed.

```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer
```
