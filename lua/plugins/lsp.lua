return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

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
        end
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
        },
    }
}
