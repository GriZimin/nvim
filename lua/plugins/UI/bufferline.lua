return {
    {
        "akinsho/bufferline.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },

        config = function()
            require("bufferline").setup({
              options = {
                mode = "buffers", -- Либо "tabs", если хочешь вкладки
                separator_style = "slant", -- Также можно "thick", "thin" или "padded_slant"
                diagnostics = "nvim_lsp",
                offsets = { { filetype = "neo-tree", text = "File Explorer", highlight = "Directory", separator = true } },
                show_buffer_close_icons = false,
                show_close_icon = false,
                always_show_bufferline = true,
              }
            })
        end,
    }
}
