local actions = require "telescope.actions"
local action_layout = require("telescope.actions.layout")
require('telescope').setup{
    defaults = {
        layout_strategy = "horizontal",
        path_display = { "tail" },
        mappings = {
            i = {
                ["<c-d>"] = actions.delete_buffer + actions.move_to_top,
                ["<esc>"] = actions.close,
                ["<c-p>"] = action_layout.toggle_preview,
            }

        },
        pickers = {
        },
        extensions = {
        }
    }
}
