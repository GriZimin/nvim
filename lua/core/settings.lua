vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

local ok, _ = pcall(vim.cmd, 'colorscheme oldworld')
if not ok then
  vim.cmd 'colorscheme default' -- if the above fails, then use default
end

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.background = "dark"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true
