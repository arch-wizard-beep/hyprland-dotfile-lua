# hyprland-dotfile-lua

---

## 📌 About This Repository

This configuration **was not built entirely from scratch**.

It originally started from the **Garuda Linux Hyprland** configuration and has since been heavily modified, reorganized, and migrated to the new **Hyprland Lua** configuration system.

The goal of this project was **not simply to convert `.conf` files into `.lua`**, but to redesign the configuration into a cleaner and more maintainable structure.

Changes include:

- Complete migration from Hyprland's legacy configuration format to Lua
- Modular file organization using `require()`
- Removal of unnecessary or distribution-specific settings
- Cleaner directory structure
- Improved readability and maintainability
- Easier customization and future expansion

While the project still contains ideas inspired by the original Garuda configuration, most files have been rewritten, reorganized, or customized to better suit my workflow. The Garuda Hyprland project itself has also migrated to Lua in recent updates. :contentReference[oaicite:0]{index=0}

Huge thanks to the **Garuda Linux** team for providing an excellent starting point.

---

## 📂 Why Modular Lua?

Instead of maintaining a single file with hundreds of lines, each feature has its own dedicated Lua module.

```
hyprland.lua
│
├── config/
│   ├── autostart.lua
│   ├── binds.lua
│   ├── env.lua
│   ├── input.lua
│   ├── look.lua
│   ├── monitor.lua
│   └── windowrules.lua
```

The main configuration only loads the required modules:

```lua
require("config.autostart")
require("config.binds")
require("config.env")
require("config.input")
require("config.look")
require("config.monitor")
require("config.windowrules")
```

This structure makes it much easier to:

- 🔹 Find specific settings
- 🔹 Debug configuration issues
- 🔹 Add new features
- 🔹 Share individual modules
- 🔹 Keep the repository organized as it grows

The official Hyprland documentation also recommends splitting larger Lua configurations into multiple files using Lua's `require()` mechanism. :contentReference[oaicite:1]{index=1}