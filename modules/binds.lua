---------------------
---- KEYBINDINGS ----
---------------------
local mainMod = "SUPER"

hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind(mainMod .. " + 36", hl.dsp.exec_cmd("kitty")) -- 36 = Enter
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd("nwgbar"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("thunar"))
hl.bind(mainMod .. " + SHIFT + 36", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + SUPER_L", hl.dsp.exec_cmd("/home/faceless/.config/rofi/launchers/type-7/launcher.sh"), { release = true }) -- UNCONFIRMED: old bind used `bindr`
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("emote"))
hl.bind(mainMod .. " + SHIFT + D", hl.dsp.exec_cmd("nwg-drawer -mb 10 -mr 10 -ml 10 -mt 10"))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + w", hl.dsp.exec_cmd("/home/faceless/.config/swww/change-wallpaper.sh"))

-- Mainmod + Function keys
hl.bind(mainMod .. " + F1",  hl.dsp.exec_cmd("firedragon"))
hl.bind(mainMod .. " + F2",  hl.dsp.exec_cmd("thunderbird"))
hl.bind(mainMod .. " + F3",  hl.dsp.exec_cmd("thunar"))
hl.bind(mainMod .. " + F4",  hl.dsp.exec_cmd("geany"))
hl.bind(mainMod .. " + F5",  hl.dsp.exec_cmd("github-desktop"))
hl.bind(mainMod .. " + F6",  hl.dsp.exec_cmd("gparted"))
hl.bind(mainMod .. " + F7",  hl.dsp.exec_cmd("inkscape"))
hl.bind(mainMod .. " + F8",  hl.dsp.exec_cmd("blender"))
hl.bind(mainMod .. " + F9",  hl.dsp.exec_cmd("meld"))
hl.bind(mainMod .. " + F10", hl.dsp.exec_cmd("joplin-desktop"))
hl.bind(mainMod .. " + F11", hl.dsp.exec_cmd("snapper-tools"))
hl.bind(mainMod .. " + F12", hl.dsp.exec_cmd("galculator"))

-- Move focus with mainMod + arrow keys / vim keys
hl.bind(mainMod .. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + H",     hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + L",     hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + K",     hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down",  hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + J",     hl.dsp.focus({ direction = "down" }))

-- Switch workspaces / move window to workspace / move silently, mainMod + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind("ALT + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i, silent = true })) -- UNCONFIRMED "silent" field, was movetoworkspacesilent
end

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Volume / mic (laptop keys). Fixed to use named XF86 keysyms instead of raw
-- keycodes -- bare numbers threw "unknown keysym" errors in the Lua API.
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd('pamixer --decrease 5; notify-send " Volume: "$(pamixer --get-volume) -t 500'), { locked = true, repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd('pamixer --increase 5; notify-send " Volume: "$(pamixer --get-volume) -t 500'), { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd('pamixer --toggle-mute; notify-send " Volume: Toggle-mute" -t 500'), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd('pactl set-source-mute @DEFAULT_SOURCE@ toggle; notify-send "System Mic: Toggle-mute" -t 500'), { locked = true, repeating = true })

-- Other bindings
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("firedragon"))
hl.bind(mainMod .. " + M", hl.dsp.window.fullscreen({ mode = 1 }))       -- UNCONFIRMED exact dispatcher shape
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = 0 }))       -- UNCONFIRMED exact dispatcher shape
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen_state({ internal = 0, client = 2 })) -- UNCONFIRMED, was `fullscreenstate, 0 2`

-- Brightness keys, fixed to use named XF86 keysyms (same "unknown keysym" issue as volume)
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -c backlight set 5%-"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl -c backlight set +5%"), { locked = true, repeating = true })

hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("killall -9 wpaperd && wpaperd"))

-- Screenshots
hl.bind("Print",       hl.dsp.exec_cmd('grim -g "$(slurp)" - | swappy -f -'))
hl.bind("CTRL + Print",  hl.dsp.exec_cmd(".config/hypr/scripts/screenshot_window.sh"))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd(".config/hypr/scripts/screenshot_display.sh"))

-- Media keys, fixed to use named XF86 keysyms (same "unknown keysym" issue as volume)
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),      { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Misc app launchers
hl.bind(mainMod .. " + SHIFT + G", hl.dsp.exec_cmd("footclient -e ~/.local/bin/bear/implement_gum.sh enable")) -- enable G-Hyprland
hl.bind(mainMod .. " + I", hl.dsp.exec_cmd(".local/bin/calamares.sh")) -- Install Garuda Hyprland

------------------------------------------
---- RESIZE SUBMAP (UNCONFIRMED API) ------
------------------------------------------
-- The official example config does not demonstrate submaps in Lua. Verify the
-- current API against https://wiki.hypr.land/Configuring/Basics/Binds/ before
-- relying on this. Left as a placeholder with the legacy submap logic in comments:
--
-- submap = resize
--   binde = ,right,resizeactive,50 0
--   binde = ,left,resizeactive,-50 0
--   binde = ,up,resizeactive,0 -50
--   binde = ,down,resizeactive,0 50
-- submap = reset
--
-- hl.bind(mainMod .. " + R", hl.dsp.submap("resize"))  -- UNCONFIRMED

-- Special workspace (scratchpad)
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- to move window
hl.bind(mainMod .. " + SHIFT + up",    hl.dsp.window.move({ direction = "up" }))    -- UNCONFIRMED field name
hl.bind(mainMod .. " + SHIFT + K",     hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down",  hl.dsp.window.move({ direction = "down" }))
hl.bind(mainMod .. " + SHIFT + J",     hl.dsp.window.move({ direction = "down" }))
hl.bind(mainMod .. " + SHIFT + left",  hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + H",     hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + L",     hl.dsp.window.move({ direction = "right" }))
