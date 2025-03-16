return {
    "folke/noice.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify"
    },

    config = function()
        require("noice").setup({
          cmdline = {
            enabled = true,
            view = "cmdline",
          },
          messages = {
            enabled = true,
            view = "mini",
          },
          popupmenu = {
            enabled = true,
            backend = "nui",
          },
          lsp = {
            progress = {
              enabled = true,
              format = "lsp_progress",
            },
            override = {
              ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
              ["vim.lsp.util.stylize_markdown"] = true,
              ["cmp.entry.get_documentation"] = true,
            },
          },
          presets = {
            bottom_search = true, -- Командная строка внизу
            command_palette = true, -- Красивое меню команд
            long_message_to_split = true, -- Длинные сообщения в сплит
            lsp_doc_border = true, -- Граница вокруг LSP-подсказок
          },
        })

        local notify = require("notify")

        notify.setup({
          background_colour = "#1e1e2e",
          fps = 200,
          render = "default",
          stages = "fade_in_slide_out",
          timeout = 2000,

          max_width = function()
            return math.floor(vim.o.columns * 0.4)
          end,
          max_height = function()
            return math.floor(vim.o.lines * 0.3)
          end,
          on_open = function(win)
            vim.api.nvim_win_set_config(win, { border = "rounded" }) -- Закругленные края
          end,
        })

        vim.notify = notify
    end
}
