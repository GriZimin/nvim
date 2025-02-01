return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "nvim-neotest/nvim-nio"
        },
        config = function()
            local dap = require('dap')
            dap.configurations.cpp = {
                {
                    name = "Launch file",
                    type = "codelldb",
                    request = "launch",
                    program = function()
                      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                    end,
                    cwd = '${workspaceFolder}',
                    stopOnEntry = false,
              },
            }
        end
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        opts = {
            automatic_setup = true,
            ensure_installed = { "codelldb" },
            automatic_installation = false,
            handlers = {
                function(config)
                    require('mason-nvim-dap').default_setup(config)
                end,
            },
            c = function(config)
                config.adapters = {
                    type = "server",
                    port = "${port}",
                    executable = {
                        command = os.getenv("XDG_DATA_HOME") .. "/nvim/mason/bin/codelldb",
                        args = { "--port", "${port}" },
                    },
                }
                require('mason-nvim-dap').default_setup(config) -- don't forget this!
            end,
        },
    }
}
