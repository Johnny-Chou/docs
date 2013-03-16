### Display Ubuntu Version

    lsb_release -a

### Get Screen Resolution

    xdpyinfo | grep dimensions

### Set Desktop Wallpaper

    the version of gnome must start with 3:
    > gnome-session --version
    > gnome-session 3.6.0

    get the wallpaper:
    > gsettings get org.gnome.desktop.background picture-uri
    > 'file:///usr/share/backgrounds/warty-final-ubuntu.png'

    set the wallpaper:
    > gsettings set org.gnome.desktop.background picture-uri file:///home/pageask/work/projects/artworks/ruby.png