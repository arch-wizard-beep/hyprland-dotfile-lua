--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------
-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
hl.window_rule({ name = "float-garuda-assistant",          match = { title = "garuda-assistant" },          float = true })
hl.window_rule({ name = "float-garuda-boot-options",       match = { title = "garuda-boot-options" },       float = true })
hl.window_rule({ name = "float-garuda-boot-repair",        match = { title = "garuda-boot-repair" },        float = true })
hl.window_rule({ name = "float-garuda-gamer",              match = { title = "garuda-gamer" },              float = true })
hl.window_rule({ name = "float-garuda-network-assistant",  match = { title = "garuda-network-assistant" },  float = true })
hl.window_rule({ name = "float-garuda-settings-manager",   match = { title = "garuda-settings-manager" },   float = true })
hl.window_rule({ name = "float-garuda-welcome",            match = { title = "garuda-welcome" },            float = true })
hl.window_rule({ name = "float-calamares",                 match = { title = "calamares" },                 float = true })

hl.window_rule({ name = "opacity-thunar",    match = { title = "thunar" },  opacity = { 0.85, 0.85 } })
hl.window_rule({ name = "opacity-gedit",     match = { title = "gedit" },   opacity = { 0.85, 0.85 } })
hl.window_rule({ name = "opacity-catfish",   match = { title = "catfish" }, opacity = { 0.85, 0.85 } })
hl.window_rule({ name = "stay-focused-rofi", match = { title = "rofi" },    stay_focused = true })
hl.window_rule({ name = "opacity-floating",  match = { float = true },      opacity = { 0.9, 0.9 } })

-- Blur-on-layers list (UNCONFIRMED exact API shape -- old `blurls` had no direct hl.* equivalent
-- shown in the official example; layer_rule with a blur flag is the closest documented analogue)
hl.layer_rule({ name = "blur-rofi",    match = { namespace = "rofi" },            blur = true }) -- UNCONFIRMED
hl.layer_rule({ name = "blur-thunar",  match = { namespace = "thunar" },          blur = true }) -- UNCONFIRMED
hl.layer_rule({ name = "blur-gedit",   match = { namespace = "gedit" },           blur = true }) -- UNCONFIRMED
hl.layer_rule({ name = "blur-drawer",  match = { namespace = "gtk-layer-shell" }, blur = true }) -- UNCONFIRMED, for nwg-drawer
hl.layer_rule({ name = "blur-catfish", match = { namespace = "catfish" },         blur = true }) -- UNCONFIRMED
