return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()

            vim.lsp.config('lua_ls', {
                capabilities = capabilities,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { 'vim' },
                        },
                    },
                },
            })
            vim.lsp.enable('lua_ls')

            vim.lsp.config('pyright', {
                capabilities = capabilities,
            })
            vim.lsp.enable('pyright')

            vim.lsp.config('jdtls', {
                capabilities = capabilities,
            })
            vim.lsp.enable("jdtls")

            vim.lsp.config('cssls', {
                capabilities = capabilities,
            })
            vim.lsp.enable('cssls')

            vim.lsp.config('texlab', {
                capabilities = capabilities,
                settings = {
                    texlab = {
                        latexFormatter = "latexindent",
                    },
                },
            })
            vim.lsp.enable("texlab")

            vim.lsp.config('ltex', {
                capabilities = capabilities,
            })
            vim.lsp.enable("ltex")
        end
    },

    {
        "saghen/blink.cmp",
        dependencies = { 'rafamadriz/friendly-snippets' },
        version = "1.*",
        opts = {
            -- See :h blink-cmp-config-keymap for defining your own keymap
            keymap = { preset = 'super-tab' },

            appearance = {
                nerd_font_variant = 'mono'
            },

            completion = { documentation = { auto_show = true } },

            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },

            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" },
    }
}
