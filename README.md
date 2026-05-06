
# ── USERNAME ──
label {
    monitor     =
    text        = cmd[update:0] whoami | tr '[:lower:]' '[:upper:]' | sed 's/.*/[ & ]/'
    color       = $font_color
    font_size   = 34
    font_family = JetBrainsMono Nerd Font SemiBold
    position    = 0, 48
    halign      = center
    valign      = center
    shadow_passes = 2
    shadow_size = 1
    shadow_color = rgba(0, 0, 0, 0.6)
}


# ── Sanskrit subtitle ──
label {
    monitor     =
    text        = यन्त्र · जागृत
    color       = rgba(200, 184, 154, 0.5)
    font_size   = 12
    font_family = Noto Serif Devanagari Light
    position    = 0, 10
    halign      = center
    valign      = center
    shadow_passes = 0
}

# ── Top left ──
label {
    monitor     =
    text        = SESSION LOCKED
    color       = $font_color
    font_size   = 11
    font_family = JetBrainsMono Nerd Font Medium
    position    = 30, -30
    halign      = left
    valign      = top
    shadow_passes = 0
}

# ── Top right ──
label {
    monitor     =
    text        = cmd[update:1000] echo "$TIME  ·  $(date '+%Y / %m / %d')"
    color       = $font_color
    font_size   = 11
    font_family = JetBrainsMono Nerd Font
    position    = -30, -30
    halign      = right
    valign      = top
    shadow_passes = 0
}

# ── Bottom left ──
label {
    monitor     =
    text        = cmd[update:0] printf "OMARCHY LINUX · HYPRLAND"
    color       = rgba(200, 184, 154, 0.6)
    font_size   = 10
    font_family = JetBrainsMono Nerd Font
    position    = 30, 30
    halign      = left
    valign      = bottom
    shadow_passes = 0
}

# ── Bottom right ──
label {
    monitor     =
    text        = cmd[update:0] uname -r | cut -d- -f1
    color       = rgba(200, 184, 154, 0.6)
    font_size   = 10
    font_family = JetBrainsMono Nerd Font
    position    = -30, 30
    halign      = right
    valign      = bottom
    shadow_passes = 0
}

# ── Bottom ticker ──
label {
    monitor     =
    text        = SYSTEM SCAN · OK  ▸  MEMORY INTEGRITY · VERIFIED  ▸  SESSION LOCKED · SECURE  ▸  NETWORK UPLINK · STABLE  ▸
    color       = rgba(200, 184, 154, 0.3)
    font_size   = 9
    font_family = JetBrainsMono Nerd Font
    position    = 0, 12
    halign      = center
    valign      = bottom
    shadow_passes = 0
}
