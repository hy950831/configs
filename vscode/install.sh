#!/bin/bash



rm ~/Library/Application\ Support/Code/User/settings.json
rm ~/Library/Application\ Support/Code/User/keybindings.json
ln settings.json ~/Library/Application\ Support/Code/User/settings.json
ln keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
cat extensions | xargs -L 1 code --install-extension

