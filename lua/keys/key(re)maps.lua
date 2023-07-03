local keymap = vim.keymap
local cmd = vim.cmd
local keymap = vim.keymap

keymap.set("n", "<leader>er", cmd.Ex)

-- Telescope 
local builtin = require('telescope.builtin')

keymap.set('n', '<leader>ff', builtin.find_files, {})

-- LSP-zero 
keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

-- Default vim remap
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")

keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

