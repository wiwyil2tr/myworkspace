# myworkspace
i3wm and picom and vim config file<br>
This is my configured working environment consisting of KDE and i3wm, with the main feature being keyboard operation.<br> 
Keynav is used for keyboard control of the cursor, and the vimium plugin is used in the browser to browse web pages with the keyboard. <br>
The config file in the compressed package is the configuration file for i3wm, specifically designed for use with KDE. If using other desktop environments or no desktop environment, modifications will be necessary.<br>
The wallpaper used is archlinux-wallpaper, but KDE also comes with its own wallpaper and deepin-wallpapers. <br>
This file should be placed in ~/.config/i3. Picom.conf is the picom configuration file used for displaying composite effects, such as window transparency and frosted glass effects. This file should be placed in ~/.config/picom. <br>
Zshrc is the configuration file for zsh, modified from the previous file to prevent command conflicts, changing some alias commands, and using the "i3config" command to point to "vim ~/.config/i3/config" for ease of modifying commands. This file needs to be renamed to ".zshrc" and moved to the home directory. <br>
Vimrc is the configuration file for vim, which needs to be renamed to ".vimrc" and moved to the home directory. Vim uses the nerdtree plugin to display the directory structure, and ctrl+w saves without quitting, while ctrl+n launches nerdtree. <br>
To start, first launch the KDE desktop, then press the super key to bring up the launcher and enter "i3 --replace" to start the i3 mode for better performance.
