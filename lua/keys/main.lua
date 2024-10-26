require('keys/alias')

nm('t', '<cmd>Neotree<CR>')

nm('zz', '<cmd>FloatermNew<CR>')
nm('zp', '<cmd>FloatermNew python3<CR>')

-- Barbar
nm('A,', '<Cmd>BufferPrevious<CR>')
nm('A.', '<Cmd>BufferNext<CR>')
nm('Ac', '<Cmd>BufferClose<CR>')

nm('<Space>f', '<Cmd>Telescope oldfiles<CR>')

vim.keymap.set('n', '<Leader>dt', function() require('dap').continue() end)
vim.keymap.set('n', '<Leader>dn', function() require('dap').step_over() end)
vim.keymap.set('n', '<Leader>di', function() require('dap').step_into() end)
vim.keymap.set('n', '<Leader>do', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>db', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>dB', function() require('dap').set_breakpoint() end)
