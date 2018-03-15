class desktop::install {

  $packages = [
    'thunar',
    'rsync',
    'mlocate',
    'keepass',
    'xdotool',
    'git',
    'gitg',
    'chromium',
    'fish',
    'btrfs-progs',
    'guake',
    'networkmanager',
    'network-manager-applet',
    'openvpn',
    'networkmanager-openvpn',
    'openssh',
    'cbatticon',
    'zip',
    'xautolock',
    'wget',
    'vim',
    'unzip',
    'ansible',
    'puppet',
    'pass',
    'ntp',
    'lightdm',
    'mc',
    'go',
    'gnome-keyring',
    'feh',
    'docker',
    'arandr',
    'dmenu',
    'dunst',
  ]

  $aur_package = [
    'gnome-ssh-askpass2',
    'keepass-plugin-http',
    'yaourt',
    'dropbox',
  ]

  package { $packages
    ensure => installed,
  }
}
