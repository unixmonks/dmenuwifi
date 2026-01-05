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

1. Fetches saved networks using `wpa_cli list_networks`
2. Displays them in dmenu for selection
3. Disables all networks and enables the selected one via wpa_cli

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
