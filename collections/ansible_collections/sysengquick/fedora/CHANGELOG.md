# CHANGELOG

## 1.5.0 - 2025-09-27

- add ssh, gitconfig, and bash config templatating
- allow overriding hosts in the niri playbok
- fix issue in boolean handling
  - passing as extra_vars could change the type to str and always be true
- update inventory
  - add more host groups
  - add docker host for local connections
  - add missing packages
  - add more example config
  - add hostname to custom prompt
- fix joplin dependencies
  - needs fusermount from fuse to actually run
- add nautilus to niri packages
  - needed for file chooser dialogs
- add NetworkManager-wifi to niri packages
  - needed to configure wifi networks with nm-applet
- remove unused niri default config from role

## 1.4.0 - 2025-09-27

- support custom files for niri configs (e.g. waybar)
- restore original waybar config as default
- add custom waybar config to inventory
- add tailscale special app installer

## 1.3.1 - 2025-09-27

- move role defaults to inventory
- clean up minor role issues
- fix required packages for joplin and uv special apps

## 1.3.0 - 2025-09-26

- add graphical policykit for niri
  - allow choice of lxde, lxqt, kde, mate, and xfce with niri_polkit_agent (default: mate)
- fix niri package names (how did this work in the Gnome install?)
  - nm-applet -> network-manager-applet
  - blueman-applet -> blueman
- fix graphical.target and sddm on boot
- add niri config customization
  - sddm theme
  - swaybg image
  - swayidle config
  - swaylock
  - niri config.kdl
- don't overwrite config files by default
  - add niri_overwrite_config_files option to change this
- backup files that are being copied/templated
- move inventory to directory
  - add host_vars for fedora-niri-ks host

## 1.2.1 - 2025-09-25

- upgrade ansible-core to 2.17
  - fixes bug with dnf module on RPM installation
- switch to using dnf module for RPM package installs

## 1.2.0 - 2025-09-25

- use a single temp dir for all special apps
- update the waybar config
- use listener model for systemd daemon-reload handler
- consolidate the niri install tasks
- make the apps defaults more flexible
  - allow add/remove to defaults or total replacement

## 1.1.0 - 2025-09-24

- add additional vs code extension
  - gitlens for rebase support
  - markdownlint / markdown all in one for markdown
- add community.general collection to devcontainer
- move niri user tasks to user role
- make niri tags specific to niri tasks
- add apps role
  - handles fedora and custom repo rpm packages
  - handles custom RPM package installation
  - handles flatpaks and adds flathub
  - handles special applications
    - uv and joplin

## 1.0.0 - 2025-09-23

- initial release
