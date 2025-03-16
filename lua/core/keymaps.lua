vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")

-- Splitting windows
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split verticaly" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split horizontaly" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make windows equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", {desc = "Close window" })
keymap.set("n", "<leader>sm", "<cmd>MaximizerToggle<CR>", { desc = "Maximize/minimize a split" })

-- Windows navigation
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")

-- LSP
keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to Definition" })
keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Hover Documentation" })
keymap.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "Rename Symbol" })
keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "Code Action" })

-- Quit
keymap.set("n", "<leader>q", "<cmd>x<cr>", { noremap = true, silent = true, desc = "Save and Close"})
keymap.set("n", "<leader>Q", "<cmd>xa<cr>", { noremap = true, silent = true, desc = "Save and Close All"})

-- Disable highlighting
keymap.set("n", "<leader>nh", "<cmd>nohl<CR>")

-- Neotree
keymap.set("n", "<leader>ee", "<cmd>Neotree toggle<CR>", { noremap = true, silent = true, desc = "Toggle Neotree"})
keymap.set("n", "<leader>ef", "<cmd>Neotree focus<CR>", { noremap = true, silent = true, desc = "Focus on Neotree"})

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true,desc = "Find files"})
keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { noremap = true, silent = true, desc = "Find old files"})

-- Bufferline
keymap.set("n", "<leader>.", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
keymap.set("n", "<leader>,", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" })
keymap.set("n", "<leader>/.", "<cmd>BufferLineCloseRight<CR>", { desc = "Close buffers to right" })
keymap.set("n", "<leader>/,", "<cmd>BufferLineCloseLeft<CR>", { desc = "Close buffers to left" })

-- CodeRunner
keymap.set("n", "<leader>rr", "<cmd>RunCode<cr>", { noremap = true, silent = true, desc = "Run Code" })
keymap.set("n", "<leader>rf", "<cmd>RunFile<cr>", { noremap = true, silent = true, desc = "Run File" })
keymap.set("n", "<leader>rc", "<cmd>RunClose<cr>", { noremap = true, silent = true, desc = "Stop running" })
keymap.set("n", "<leader>rp", "<cmd>RunProject<cr>", { noremap = true, silent = true, desc = "Run project" })

-- DAP
keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>", { noremap = true, silent = true, desc = "Toggle breakpoint" })
keymap.set("n", "<leader>ds", "<cmd>DapNew<cr>", { noremap = true, silent = true, desc = "Start debugger" })
keymap.set("n", "<leader>dt", "<cmd>DapTerminate<cr>", { noremap = true, silent = true, desc = "Terminate debug session" })
keymap.set("n", "<leader>dd", "<cmd>DapStepOver<cr>", { noremap = true, silent = true, desc = "Step Over" })
