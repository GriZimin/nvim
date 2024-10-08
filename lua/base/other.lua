--[[ Настройка панелей ]]--
-- Вертикальные сплиты становятся справа
-- По умолчанию панели в Neovim ставятся в зависимости от расположения текущей панели. Данная настройка поможет нам держать панели в порядке
vim.opt.splitright = true

-- Горизонтальные сплиты становятся снизу
vim.opt.splitbelow = true

--[[ Дополнительные настройки ]]--
-- Используем системный буфер обмена
vim.opt.clipboard = 'unnamedplus'

-- Отключаем дополнение файлов в конце
vim.opt.fixeol = false

-- Автодополнение (встроенное в Neovim)
vim.opt.completeopt = 'menuone,noselect'

-- Не автокомментировать новые линии при переходе на новую строку
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]

-- Relative numbers
vim.wo.relativenumber = true
