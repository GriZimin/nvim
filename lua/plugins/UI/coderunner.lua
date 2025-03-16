return {
    "CRAG666/code_runner.nvim",
    config = true,
    opts = {
        filetype = {
            cpp = {
              "cd $dir &&",
              "g++ $fileName ",
              "-g -Wall -Wextra -Wfloat-equal -Wcast-align -Warray-bounds -Wdiv-by-zero -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -fsanitize=bounds -Wshadow -D_FORTIFY_SOURCE=0 -fsanitize=undefined,address -fno-sanitize-recover=all -Wformat=2 -DLOCAL -std=gnu++20 ",
              "-o $fileNameWithoutExt &&",
              "$dir/$fileNameWithoutExt",
            },
        },
    }
}
