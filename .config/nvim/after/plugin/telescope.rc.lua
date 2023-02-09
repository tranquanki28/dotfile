local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

telescope.setup {
    defaults = {
        layout_config = {
            width = 0.75,
            prompt_position = "top",
            preview_cutoff = 121,
            horizontal = { mirror = false },
            vertical = { mirror = false }
        },
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        mappings = {
            n = {
                ["q"] = actions.close
            },
            i = {
                ["<C-e>"] = actions.move_selection_previous,
            }
        },
        prompt_prefix = "🔍 ",
        selection_caret = "> ",
        entry_prefix = "  ",
        file_ignore_pattern = { "node_modules" }
    },
    pickers = {
        find_files = {
            theme = "dropdown",
        }
    },
}

vim.keymap.set('n', '<leader>f', function()
    builtin.find_files({
        no_ignore = false,
        hidden = true
    })
end)
vim.keymap.set('n', '<leader>g', function()
    builtin.live_grep()
end)
vim.keymap.set('n', '<leader>b', function()
    builtin.buffers()
end)
vim.keymap.set('n', '<leader>h', function()
    builtin.help_tags()
end)
vim.keymap.set('n', '<leader>d', function()
    builtin.diagnostics()
end)
