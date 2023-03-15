local filesystem = require('gears.filesystem')

-- Thanks to jo148 on github for making rofi dpi aware!
local with_dpi = require('beautiful').xresources.apply_dpi
local get_dpi = require('beautiful').xresources.get_dpi
local rofi_command = 'env /usr/bin/rofi -dpi ' .. get_dpi() .. ' -width ' .. with_dpi(400) .. ' -show drun -theme ' .. filesystem.get_configuration_dir() .. '/configuration/rofi.rasi -run-command "/bin/bash -c -i \'shopt -s expand_aliases; {cmd}\'"'

return {
  -- List of apps to start by default on some actions
  default = {
    lock = 'i3lock-fancy',
--    quake = 'terminator -p Catppuccin ',
    quake = 'kitty',
    screenshot = 'flameshot screen -p ~/Pictures',
    region_screenshot = 'flameshot gui -p ~/Pictures',
    delayed_screenshot = 'flameshot screen -p ~/Pictures -d 5000',
    browser = 'brave-browser',
    editor = 'gedit', -- gui text editor
    social = 'discord',
    game = rofi_command,
    files = 'pcmanfm',
    music = rofi_command 
  },
  -- List of apps to start once on start-up
  run_on_start_up = {
  --  'mpv --no-video Music/jarvis.mp3',
--    'mpv --no-video Music/startup--computer--short-musical-style-phrase--9-sound-effect-57272339.mp3',
    'blueman-applet',
--	'killall conky && conky',
 --   'nitrogen --restore',
--'compton --config .config/compton/compton.conf',
 'picom --config .config/picom/picom.conf',
  'nm-applet --indicator', -- wifi
    'pnmixer', -- shows an audiocontrol applet in systray when installed.
    --'blueberry-tray', -- Bluetooth tray icon
    'numlockx on', -- enable numlock
    '/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)', -- credential manager
    'xfce4-power-manager', -- Power manager
     'flameshot',
     'synology-drive -minimized',
 --    'steam -silent',
    'feh --bg-fill Pictures/625ae194196117.5e7ca25f91309.jpg',
    '/usr/bin/variety',
    -- Add applications that need to be killed between reloads
    -- to avoid multipled instances, inside the awspawn script
    '~/.config/awesome/configuration/awspawn' -- Spawn "dirty" apps that can linger between sessions
  }
}

