return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim"
    },
    config = function() 
        require("neo-tree").setup({
          close_if_last_window = true, -- Закрывает Neo-tree, если это последнее окно
          popup_border_style = "rounded",
          enable_git_status = true,
          enable_diagnostics = true,
          filesystem = {
            follow_current_file = true, -- Выделяет текущий файл
            use_libuv_file_watcher = true, -- Автообновление при изменении файлов
          },
          window = {
            position = "left",
            width = 30,
            mappings = {
              ["<space>"] = "none",
              ["o"] = "open",
              ["s"] = "open_split",
              ["v"] = "open_vsplit",
              ["t"] = "open_tabnew",
              ["C"] = "close_node",
              ["r"] = "rename",
              ["d"] = "delete",
              ["a"] = "add",
              ["y"] = "copy_to_clipboard",
              ["p"] = "paste_from_clipboard",
            }
          },
        })
    end
}
