return {
    {
        'nvim-treesitter/nvim-treesitter',
        branch = 'main',
        build = ':TSUpdate',
    },

    {
        'MeanderingProgrammer/treesitter-modules.nvim',
        config = function()
            require('treesitter-modules').setup({
                ensure_installed = {
                    'rust',
                    'javascript',
                    'zig',
                    'lua',
                    'python',
                    'vim',
                    'java'
                },
                auto_install = true,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },

                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "gnn",
                        node_incremental = "grn",
                        node_decremental = "grm",
                        scope_incremental = "grc",
                    }
                },

                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        include_surrounding_whitespace = true,
                    }
                }
            })

            local select = require("nvim-treesitter-textobjects.select").select_textobject

            vim.keymap.set({ "x", "o" }, "af", function()
                select("@function.outer", "textobjects")
            end)
            vim.keymap.set({ "x", "o" }, "if", function()
                select("@function.inner", "textobjects")
            end)
            vim.keymap.set({ "x", "o" }, "ac", function()
                select("@class.outer", "textobjects")
            end)
            vim.keymap.set({ "x", "o" }, "ic", function()
                select("@class.inner", "textobjects")
            end)
            vim.keymap.set({ "x", "o" }, "as", function()
                select("@local.scope", "locals")
            end)
        end
    },

    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        branch = "main"
    }
}
