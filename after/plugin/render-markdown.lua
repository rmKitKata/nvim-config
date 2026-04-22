vim.api.nvim_set_hl(0, "RenderMarkdownInProgress", { fg = "#cba6f8", bold = true })

require('render-markdown').setup({
    heading = {
        width = "block",
        backgrounds = {
            "MiniStatusLineModeNormal",
            "MiniStatusLineModeInsert",
            "MiniStatusLineModeReplace",
            "MiniStatusLineModeVisual",
            "MiniStatusLineModeCommand",
            "MiniStatusLineModeOther",
        },
        sign = false,
        left_pad = 1,
        right_pad = 0,
        position = "right",
        icons = {
            "",
            "",
            "",
            "",
            "",
            "",
        },
    },

    sign = {
        backgrounds = {
            "MiniStatusLineModeNormal",
            "MiniStatusLineModeInsert",
            "MiniStatusLineModeReplace",
            "MiniStatusLineModeVisual",
            "MiniStatusLineModeCommand",
            "MiniStatusLineModeOther",
        }
    },

    checkbox = {
        custom = {
            unchecked = {
                raw = '[ ]',
                icon = '󰄱 ',
                highlight = 'RenderMarkdownUnchecked',
            },
            checked = {
                raw = '[x]',
                icon = '󰄵 ',
                highlight = 'RenderMarkdownChecked'
            },
            doing = {
                raw = '[d]',
                rendered = '󰅏 ',
                highlight = 'RenderMarkdownInProgress',
            },
        },
    },
})
