# Mango configuration

This is my personal configuration for [Mango](https://github.com/mangowm/mango), a Wayland compositor based on `dwl`.

It provides a compact, keyboard-driven setup with Hyprland-inspired animations, tiling-oriented keybindings, scratchpad support, window rules, blur and shadows, and integration with the Noctalia shell.

## Using it

Install Mango first, then clone this repository to Mango's default configuration directory:

```sh
git clone <repository-url> ~/.config/mango
```

If `~/.config/mango` already exists, back it up or copy the files from this repository into it instead. Start or reload Mango after reviewing the machine-specific settings below. `Super+R` reloads the configuration.

## Files

- `config.conf` contains the main Mango configuration and keybindings.
- `application-rules.conf` contains per-application window rules.
- `autostart.sh` imports the Wayland session environment, restarts `xdg-desktop-portal-wlr`, starts Noctalia and Solaar, and starts Mouseless when its per-user Flatpak is installed.
- `noctalia.conf` contains generated theme colors. It is intentionally ignored because Noctalia recreates it when it manages Mango's theme.

## Before using this configuration

This setup assumes the following programs are installed:

- `foot`
- `chromium`
- `nautilus`
- `noctalia`
- `xdg-desktop-portal-wlr`

Several keybindings call Noctalia for the launcher, clipboard, screenshots, media controls, brightness, session controls, and plugins. If you do not use Noctalia, remove those bindings, remove its line from `autostart.sh`, and remove the `noctalia.conf` source line from `config.conf`.

Review these machine-specific settings before starting Mango:

- The monitor rule targets `HDMI-A-1` and applies 1.33 scaling.
- Two bindings reference scripts under `/home/alexandersix/bin`. Replace these paths with your own scripts or remove the bindings.
- The application rules include floating sizes for 1Password and Bolt Launcher.

See the [Mango configuration documentation](https://mangowm.github.io/docs/configuration/basics/) for available settings and further customization.
