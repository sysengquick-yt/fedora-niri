# CHANGELOG

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
