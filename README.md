# My i3wm config
This config was designed to work out-of-the-box. All you have to do is follow the installation guide below.

![screenshot-1](screenshots/screenshot-1.jpg)

![screenshot-2](screenshots/screenshot-2.jpg)

![screenshot-3](screenshots/screenshot-3.jpg)

*in case if anyone wants to know, the terminals in the screenshots above are gnome-terminals.*

## How to install

### Step 1: install dependencies

**Debian:**
```
$ sudo apt install sensible-utils xdg-utils brightnessctl pulseaudio pavucontrol py3status nitrogen rofi dunst lxpolkit fonts-dejavu python3-pip playerctl materia-gtk-theme lxappearance
$ pip install pytz tzlocal
```

**Arch:**
```
$ sudo pacman -S xdg-utils brightnessctl pulseaudio pavucontrol py3status nitrogen rofi dunst ttf-dejavu python-pip playerctl materia-gtk-theme lxappearance
$ yay -S sensible-utils lxpolkit  # You can use a different AUR helper, if you choose so.
$ pip install pytz tzlocal
```

**Install Font Awesome:**
* Download the `fontawesome-free-x.x.x-desktop.zip` archive from [here](https://github.com/FortAwesome/Font-Awesome/releases/latest),
* Extract the archive,
* Copy all of the files from `/path/to/fontawesome-free-x.x.x-desktop/otfs/` to `~/.fonts/`

### Step 2: clone repository

```
$ mv ~/.config/i3/ ~/i3-backup/
$ git clone https://github.com/FuriousGamer1356/i3-config ~/.config/i3/
```

### Step 3: finishing touches

All that's left to do now is open `lxappearance` and set the theme to `materia-dark` and the font to `DejaVu Sans Mono`. Optionally you can personalize the config files to fit your needs.

Enjoy! :tada:
