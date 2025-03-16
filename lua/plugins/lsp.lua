return {
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "WhoIsSethDaniel/mason-tool-installer.nvim"
        }
    },
    {
        "neovim/nvim-lspconfig",

        config = function()
            local lspconfig = require("lspconfig")
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            })

            require('mason-tool-installer').setup {
                ensure_installed = {
                    "codelldb",
                    "lua_ls",
                    "pyright",
                    "clangd",
                    "pylint",
                    "cpplint"
                }
            }

            local servers = { "lua_ls", "pyright", "clangd" }

            for _, server in ipairs(servers) do
              lspconfig[server].setup({
                capabilities = require("cmp_nvim_lsp").default_capabilities(),
              })
            end
        end
    }
}
