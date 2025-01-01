vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")

-- Disable highlighting
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>")

-- Neotree
keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { noremap = true, silent = true, desc = "Toggle Neotree"})
keymap.set("n", "<leader>ef", "<cmd>Neotree focus<CR>", { noremap = true, silent = true, desc = "Focus on Neotree"})

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true,desc = "Find files"})
keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { noremap = true, silent = true, desc = "Find old files"})

-- BarBar
keymap.set("n", "<leader>a,", "<Cmd>BufferPrevious<CR>", { noremap = true, silent = true, desc = "Previous Buffer" })
keymap.set("n", "<leader>a.", "<Cmd>BufferNext<CR>", { noremap = true, silent = true, desc = "Next Buffer"})
keymap.set("n", "<leader>a<", "<Cmd>BufferMovePrevious<CR>", { noremap = true, silent = true, desc = "Move Buffer Previous" })
keymap.set("n", "<leader>a>", "<Cmd>BufferMoveNext<CR>", { noremap = true, silent = true, desc = "Move Buffer Next" })
keymap.set("n", "<leader>ac", "<Cmd>BufferClose<CR>", { noremap = true, silent = true, desc = "Close Buffer" })
keymap.set("n", "<leader>ap", "<Cmd>BufferPin<CR>", { noremap = true, silent = true, desc = "Pin Buffer" })

-- CodeRunner
keymap.set("n", "<leader>rr", "<cmd>RunCode<cr>", { noremap = true, silent = true, desc = "Run Code" })
keymap.set("n", "<leader>rf", "<cmd>RunFile<cr>", { noremap = true, silent = true, desc = "Run File" })
keymap.set("n", "<leader>rc", "<cmd>RunClose<cr>", { noremap = true, silent = true, desc = "Stop running" })
keymap.set("n", "<leader>rp", "<cmd>RunProject<cr>", { noremap = true, silent = true, desc = "Run project" })
