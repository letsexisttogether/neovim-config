local opt = vim.opt

opt.clipboard = 'unnamedplus' -- Отключаем дополнение файлов в конце

opt.fixeol = false

-- Neovim default autocompletion
opt.completeopt = 'menuone,noselect' -- Автодополнение (встроенное в Neovim)

vim.cmd[[autocmd BufEnter * set fo-=c fo-=r fo-=o]] -- Не автокомментировать новые линии при переходе на новую строку

-- Line number
opt.number = true
opt.relativenumber = true

-- Line wrap
opt.wrap = false

-- Better search
opt.hlsearch = false
opt.incsearch = true

-- Good colors
opt.termguicolors = true

opt.scrolloff = 10

-- Statusline movement
opt.laststatus = 2

vim.g.mapleader = " "
