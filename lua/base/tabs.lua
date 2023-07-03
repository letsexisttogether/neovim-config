vim.opt.expandtab = true        -- Использовать пробелы вместо табуляции

vim.opt.tabstop = 4             -- Установить длину табуляции в 4 пробела

vim.opt.shiftwidth = 4          -- Установить ширину сдвига в 4 пробела

vim.opt.softtabstop = -1        -- Отключить привязку softtabstop к tabstop

vim.opt.autoindent = true       -- Включить автоматическую индентацию

vim.opt.smartindent = true      -- Включить интеллектуальную индентацию

vim.opt.formatoptions:append('t') -- Добавить t в formatoptions (табуляция после слова)
