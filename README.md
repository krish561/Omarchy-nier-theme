# NieR-Light — Omarchy Theme

A light theme for [Omarchy](https://omarchy.org) inspired by the canonical YoRHa CSS design language from NieR: Automata. Clean parchment tones, ink typography, and subtle grid texture across all surfaces.

![Preview](preview.png)

## Palette

| Role | Hex |
|---|---|
| Background | `#d1cdb7` |
| Ink / Text | `#454138` |
| Parchment | `#dcd8c0` |
| Mid tone | `#bab5a1` |
| Error / Critical | `#8b2020` |

## Features

- Waybar with grid texture background and YoRHa ink palette
- Hyprlock lockscreen with Sanskrit subtitle `यन्त्र · जागृत` (Machine · Awakened)
- Quickshell: NieR-styled notifications, control center, app menu
- Walker launcher with parchment grid background
- Full palette across ghostty, btop, neovim (Kanagawa Lotus), swayosd, gtk
- Fish shell and fzf colors

## Dependencies

```bash
# Required
yay -S quickshell        # Shell widgets
yay -S figlet            # Terminal greeting (optional)
yay -S noto-fonts        # Sanskrit subtitle font

# Already in Omarchy
# JetBrainsMono Nerd Font, Noto Serif Devanagari
```

## Quickshell Setup

Quickshell starts automatically when you switch to this theme via the `theme-set` hook. For first time setup, symlink the config:

```bash
ln -sf ~/.config/omarchy/current/theme/quickshell ~/.config/quickshell
```

Then add the following to your `~/.config/omarchy/hooks/theme-set`:

```bash
# ── Notification daemon ──────────────────────────────────────
if [[ -d "$THEME_DIR/quickshell" ]]; then
  pkill mako 2>/dev/null
  sleep 0.2
  pkill -f "qs " 2>/dev/null
  sleep 0.1
  qs -p "$HOME/.config/quickshell" &
else
  pkill -f "qs " 2>/dev/null
  pkill mako 2>/dev/null
  sleep 0.2
  pgrep -x mako >/dev/null || uwsm-app -- mako &
fi
# ── GTK colors ──────────────────────────────────────────────
if [[ -f "$THEME_DIR/gtk.css" ]]; then
  mkdir -p "$HOME/.config/gtk-4.0"
  mkdir -p "$HOME/.config/gtk-3.0"
  ln -sf "$THEME_DIR/gtk.css" "$HOME/.config/gtk-4.0/gtk.css"
  ln -sf "$THEME_DIR/gtk.css" "$HOME/.config/gtk-3.0/gtk.css"
fi
```

To start Quickshell manually:

```bash
qs -p ~/.config/quickshell
```

## Keybinds

| Key | Action |
|---|---|
| `Super + M` | NieR app menu |
| `Super + Ctrl + L` | Lock screen |

## Font

This theme uses `Nimbus Sans` (Helvetica substitute) for a clean android UI feel matching the original NieR interface. Falls back to any sans-serif if unavailable.

For monospace components, font follows your Omarchy font setting — change with `omarchy-font-set`.

## Notes

- Quickshell ControlCenter WiFi and Bluetooth toggles are visual only — not yet implemented upstream
- Wallpaper picker in Quickshell is disabled — use Omarchy's built-in background menu (`Super + Ctrl + Space`)

## Credits

- [samyns/Unit-3](https://github.com/samyns/Unit-3) — Quickshell widgets, NieR UI components, and original rice this theme is based on
- [metakirby5/yorha](https://github.com/metakirby5/yorha) — Canonical NieR: Automata CSS design language and color palette

