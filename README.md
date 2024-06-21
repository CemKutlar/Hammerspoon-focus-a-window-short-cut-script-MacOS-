# Description

This script sets 2 shortcuts. One for storing the ID of the focused window and one to make that window appear on top whenever the second shortcut pressed. There is an app called better touch tool that pins the focused window but it is paid. So I tried to do my version for fun.

# How to use

You need to install a free application called hammerspoon.

`brew install hammerspoon --cask`

After that the hammer icon will appear on the menu bar. Click on it:

Open config and paste this script to the editor and save it.

Click the icon again and reload the config. Now you can use the shortcuts to focus the desired window.

### Shortcuts:

I set `ctrl + cmd + T` for storing focused window ID.

Whenever I press `ctrl + cmd + W` the window appears on top.

The ID is stored on this path:

`/Users/<Name_of_the_user>/.hammerspoon`

You can modify your preferred shortcuts by modifying the last two lines of the script.

Note: If you store the ID as a local variable, after a while it refreshes the variable so it get lost. So you need to store it on a file.
