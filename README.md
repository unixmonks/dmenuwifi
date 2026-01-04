# dmenuwifi

A simple dmenu-based WiFi network switcher for wpa_supplicant.

## Usage

```bash
./dmenuwifi              # uses default interface (wlp0s20f3)
./dmenuwifi wlan0        # specify interface
```

## Requirements

- dmenu
- wpa_supplicant
- wpa_cli
- notify-send (optional, for notifications)

## How it works

1. Parses saved networks from `/etc/wpa_supplicant/wpa_supplicant.conf`
2. Displays them in dmenu for selection
3. Uses wpa_cli to switch to the selected network

## Installation

```bash
make install
```

Installs to `~/.local/bin/dmenuwifi`.

To uninstall:

```bash
make uninstall
```

## Permissions

You may need root access or membership in the `netdev` group to run wpa_cli commands.
