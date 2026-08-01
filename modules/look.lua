-----------------------
---- LOOK AND FEEL ----
-----------------------
hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 5,
        border_size = 2,
        col = {
            active_border = {
                colors = { "rgba(7FFF94AA)", "rgba(7FFFD4AA)", "rgba(7FEAFFFF)" },
                angle = 45,
            },
            inactive_border = {
                colors = { "rgba(ADE6D8FF)", "rgba(ADD8E69A)", "rgba(ADBBE69A)" },
                angle = 45,
            },
        },
        resize_on_border = true,
        no_focus_fallback = true, -- UNCONFIRMED: verify this key still lives under `general`
        layout = "dwindle",
    },

    decoration = {
        rounding = 10,
        active_opacity = 0.9,
        inactive_opacity = 0.8,
        blur = {
            enabled = true,
            size = 5,
            passes = 3,
        },
        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = 0xee1a1a1a, -- from rgba(1a1a1aee)
        },
    },

    animations = {
        enabled = true,
    },
})

-- Bezier curves, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("myBezier", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } })

hl.animation({ leaf = "windows",     enabled = true, speed = 7,  bezier = "myBezier" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 7,  bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "border",      enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "fade",        enabled = true, speed = 7,  bezier = "default" })
hl.animation({ leaf = "workspaces",  enabled = true, speed = 6,  bezier = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 10, bezier = "linear", style = "loop" })

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- Gestures (3-finger up/down dispatching a custom command is UNCONFIRMED syntax below;
-- the official example only shows plain "workspace" gestures)
hl.gesture({ fingers = 3, direction = "up",         action = "workspace" }) -- UNCONFIRMED: was `dispatcher, exec, garuda-rani`
hl.gesture({ fingers = 3, direction = "down",       action = "workspace" }) -- UNCONFIRMED: was `dispatcher, exec, nwg-drawer ...`
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

hl.config({
    misc = {
        disable_hyprland_logo = true,
    },
})
