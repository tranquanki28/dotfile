return  {
        "echasnovski/mini.nvim",
        version = false,
        lazy = false,
        config = function()
            require("mini.pick").setup()
            require("mini.basics").setup()
            require("mini.bufremove").setup()
            require("mini.comment").setup()
            require("mini.cursorword").setup()
            require("mini.tabline").setup()
            require("mini.align").setup({
                mappings = {
                    start = "ma",
                    start_with_preview = "mA",
                }
            })
            require("mini.files").setup({
                mappings = {
                    go_in = "i",
                    go_in_plus = "I",
                    synchronize = "<leader>w",
                },
            })
            require("mini.hipatterns").setup({
                highlighters = {
                    fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
                    hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
                    todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
                    note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
                    hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
                },
            })
            require("mini.move").setup({
                mappings = {
                    -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
                    left = "<M-h>",
                    right = "<M-i>",
                    down = "<M-n>",
                    up = "<M-e>",

                    -- Move current line in Normal mode
                    line_left = "<M-h>",
                    line_right = "<M-i>",
                    line_up = "<M-u>",
                    line_down = "<M-d>",
                },
            })
        end,
        keys = {
            {
                "<leader>f",
                function()
                    vim.cmd("Pick files")
                end,
            },
            {
                "<leader>z",
                function()
                    vim.cmd("Pick grep_live")
                end,
            },
            {
                "<leader>b",
                function()
                    vim.cmd("Pick buffers")
                end,
            },
            {
                "<leader>h",
                function()
                    vim.cmd("Pick help")
                end,
            },
            {
                "<leader>o",
                function()
                    MiniFiles.open()
                end,
            },
        },
    }
