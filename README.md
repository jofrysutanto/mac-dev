# Mac Machine Setup Guide

Just a step-by-step guide on setting up new Mac machine - targeted for Web Developers.

Heavily inspired by this article by Tania Rascia: https://www.taniarascia.com/setting-up-a-brand-new-mac-for-development/

# Steps

## Homebrew

The ultimate tool to install anything in Mac

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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

## Copy Sublime Text 3 Preferences

Copy the content of `Sublime Text 3/` to `~/Library/Application Support/Sublime Text 3/`

## Install composer

```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer
```

## Install Oh-My-Zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Global Node

```
npm install --global gulp-cli
# Hyper package manager
npm install --global hpm-cli
# Used for zsh theme
npm install --global pure-prompt
```

## Global Composer

```
composer global require hirak/prestissimo
```

## Checkpoint

By this point brew would have installed a whole suite of applications on the machine.

- Run Hyper for the first time to install all plugins
- Run Sublime Text for the first time to install all plugins (enter License key too if have one.)

## Various OSX Preferences

```
chflags nohidden ~/Library
defaults write com.apple.finder AppleShowAllFiles YES
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
```

> Relaunch Finder by holding Option + Right-Click on Finder

Additionally:
- Go to Power settings to show battery level (Macbook)

## Generate SSH keys

```
ssh-keygen -t rsa -b 4096 -C "jofrysutanto@gmail.com"
```
