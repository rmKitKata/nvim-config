vim.api.nvim_create_autocmd("FileType", {
    pattern = "java",
    callback = function()
        local jdtls = require("jdtls")
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        -- Root del proyecto
        local root_dir = vim.fs.root(0, { ".git", "mvnw", "gradlew", "pom.xml" })
        if not root_dir then return end

        -- Nombre del proyecto
        local project_name = vim.fn.fnamemodify(root_dir, ":p:h:t")

        -- Workspace por proyecto
        local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. project_name

        -- Config principal
        local config = {
            cmd = { "jdtls" },

            root_dir = root_dir,
            capabilities = capabilities,

            settings = {
                java = {
                    format = {
                        enabled = true,
                    },
                },
            },

            init_options = {
                bundles = {},
            },

            workspace_folder = workspace_dir,
        }

        -- Iniciar o adjuntar
        jdtls.start_or_attach(config)

        -- Keymaps específicos de Java
        local opts = { buffer = 0 }

        vim.keymap.set("n", "<leader>oi", jdtls.organize_imports, opts)
        vim.keymap.set("n", "<leader>ev", jdtls.extract_variable, opts)
        vim.keymap.set("n", "<leader>ec", jdtls.extract_constant, opts)
        vim.keymap.set("n", "<leader>em", jdtls.extract_method, opts)
    end,
})
