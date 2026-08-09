#!/bin/sh

systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP XDG_SESSION_TYPE DISPLAY
systemctl --user restart xdg-desktop-portal-wlr.service

noctalia &
