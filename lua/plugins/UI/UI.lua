return {
    { "glepnir/lspsaga.nvim" },
    {
        "stevearc/dressing.nvim",
        event = "VeryLazy",
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 500
        end,
    },
    {
        {
          "ray-x/lsp_signature.nvim",
          event = "InsertEnter",
          opts = {
            bind = true,
            handler_opts = {
                border = "rounded"
            }
          },
        }
    }
}

