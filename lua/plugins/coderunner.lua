return {
    "CRAG666/code_runner.nvim",
    config = true,
    opts = {
        filetype = {
            cpp = {
              "cd $dir &&",
              "g++ $fileName ",
              "-g -Wall -Wextra -Wfloat-equal -Wcast-align -Warray-bounds -Wdiv-by-zero -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -fsanitize=bounds -Wshadow -D_FORTIFY_SOURCE=0 -fsanitize=undefined -fno-sanitize-recover=all -Wformat=2 -DLOCAL -std=gnu++20 ",
              "-o $fileNameWithoutExt &&",
              "$dir/$fileNameWithoutExt",
            },
        },
        mode = "float",
        float = {
            close_key = "<ESC>",
            -- Window border (see ':h nvim_open_win')
            border = "double",

            -- Num from `0 - 1` for measurements
            height = 0.8,
            width = 0.8,
            x = 0.5,
            y = 0.5,

            -- Highlight group for floating window/border (see ':h winhl')
            border_hl = "FloatBorder",
            float_hl = "Normal",

            -- Transparency (see ':h winblend')
            blend = 0,
        },
        better_term = { -- Toggle mode replacement
            clean = false, -- Clean terminal before launch
            number = 10, -- Use nil for dynamic number and set init
            init = nil,
        },
    }
}
