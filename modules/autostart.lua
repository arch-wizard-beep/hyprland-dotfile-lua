-------------------
---- AUTOSTART ----
-------------------
-- See https://wiki.hypr.land/Configuring/Basics/Autostart/
hl.on("hyprland.start", function()
    hl.exec_cmd("nm-applet --indicator")

    -- wallpaper software
    hl.exec_cmd("/home/faceless/.config/swww-0.11.2/target/release/swww-daemon")
    hl.exec_cmd("/home/faceless/.config/swww/change-wallpaper.sh")
    -- hl.exec_cmd("hyprpaper")
    -- hl.exec_cmd("waypaper")

    -- status bar
    hl.exec_cmd("waybar")

    hl.exec_cmd("mako")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("foot --server")

    -- pre executions (under development)
    hl.exec_cmd("xrdb -load ~/.Xresources")

    -- Clipboard Manager
    hl.exec_cmd("wl-paste --type text --watch cliphist store")   -- Stores only text data
    hl.exec_cmd("wl-paste --type image --watch cliphist store")  -- Stores only image data

    -- Use gtk-settings
    hl.exec_cmd("apply-gsettings")

    -- hypridle
    hl.exec_cmd("hypridle")
end)
