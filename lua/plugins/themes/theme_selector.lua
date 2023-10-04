-- Load th  colorscheme
require('plugins/themes/monokai_pro')
-- Load the statusline style
require('plugins/themes/lualine')
-- Load the transperent
vim.cmd([[highlight Normal ctermbg=NONE guibg=NONE]])
-- Load the columns
vim.opt.fillchars = { eob = " " }
