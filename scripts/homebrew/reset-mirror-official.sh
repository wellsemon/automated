#!/bin/bash
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://github.com/Homebrew/homebrew-core

cd "$(brew --repo)"/Library/Taps/homebrew/homebrew-cask
git remote set-url origin https://github.com/Homebrew/homebrew-cask

OS=`uname -s`
if [ ${OS} == "Darwin" ]; then
	sed -i '_bak' '/HOMEBREW_BOTTLE_DOMAIN/d' ~/.bash_profile
elif [ ${OS} == "Linux" ]; then
	sed -i '/HOMEBREW_BOTTLE_DOMAIN/d' ~/.bash_profile

source ~/.bash_profile
