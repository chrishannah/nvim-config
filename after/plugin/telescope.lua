local actions = require "telescope.actions"
local action_layout = require("telescope.actions.layout")
require('telescope').setup{
    defaults = {
        layout_strategy = "vertical",
        layout_config = {
            vertical = {
                width = 0.5
            },
        },
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
