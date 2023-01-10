# My i3wm config
This config was designed to work out-of-the-box. All you have to do is follow the installation guide below.

![screenshot-1](screenshots/screenshot-1.jpg)

![screenshot-2](screenshots/screenshot-2.jpg)

![screenshot-3](screenshots/screenshot-3.jpg)

*in case if anyone wants to know, the terminals in the screenshots above are kitty terminals.*

## How to install

### Step 1: install dependencies

**Debian:**
```
$ sudo apt install brightnessctl pulseaudio pavucontrol py3status nitrogen rofi dunst lxpolkit fonts-jetbrains-mono python3-pip playerctl materia-gtk-theme lxappearance
$ pip install pytz tzlocal
```

**Arch:**
```
$ sudo pacman -S brightnessctl pulseaudio pavucontrol py3status nitrogen rofi dunst ttf-jetbrains-mono python-pip playerctl materia-gtk-theme lxappearance
$ yay -S lxpolkit  # You can use a different AUR helper, if you choose so.
$ pip install pytz tzlocal
```

**Install Font Awesome:**
```
$ cd ~/
$ wget https://github.com/FortAwesome/Font-Awesome/blob/6.x/otfs/Font%20Awesome%206%20Free-Solid-900.otf?raw=true
$ mv "Font Awesome 6 Free-Solid-900.otf" ~/.fonts/
```

### Step 2: clone repository

```
$ mv ~/.config/i3/ ~/i3-backup/
$ git clone https://github.com/FuriousGamer1356/i3-config ~/.config/i3/
```

### Step 3: finishing touches

You are now done with the installation. To improve your experience, open `lxappearance` and set the theme to `Materia Dark`. You'll also want to change the font to `JetBrains Mono`.

Enjoy! :tada:

## How to remove

If you choose not to use this config anymore, run this command.

```
$ rm -rf ~/.config/i3/ "~/.fonts/Font Awesome 6 Free-Solid-900.otf"
```
