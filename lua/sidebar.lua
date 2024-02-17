local sidebar = require("sidebar-nvim")
local opt = {
    open = false,
    datetime = {
        icon = "⌚",
        format = "%a %b/%d, %r",
        clocks = {{name = ""}}
    },
    files = {
        icon = "📁",
        show_hidden = true,
        ignored_paths = {"%.git$", "%.venv$"}
    },
    sections = {
        "datetime",
        "files", 
        "git", 
        "containers", 
        "diagnostics",
    }
}
sidebar.setup(opt)

