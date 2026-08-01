---------------------------------------
---- INPUT / KEYBOARD / TOUCHPAD ------
---------------------------------------
-- See https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",
        numlock_by_default = true,
        follow_mouse = 1,
        sensitivity = -0.1, -- -1.0 - 1.0, 0 means no modification.
        touchpad = {
            natural_scroll = true,
            tap_to_click = true,
            disable_while_typing = true,
        },
    },
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
-- hl.device({
--     name = "epic-mouse-v1",
--     sensitivity = -0.5,
-- })
