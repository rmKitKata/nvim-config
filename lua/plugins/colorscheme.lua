return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = true,
                float = { transparent = false, solid = false },
                styles = { keywords = { "bold" } },
                integrations = {
                    treesitter_context = true,
                    telescope = { enabled = true },
                    cmp = true,
                },
                custom_highlights = function(colors)
                    return {
                        ["@string"] = { fg = colors.text },
                        ["@property"] = { fg = colors.blue },
                        LineNr = { fg = colors.overlay1 },
                    }
                end
            })
        end
    }
}
