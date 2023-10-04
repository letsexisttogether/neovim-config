local keymap = vim.keymap
local cmd = vim.cmd
local keymap = vim.keymap

keymap.set("n", "<leader>er", cmd.Ex)

-- Telescope 
local builtin = require('telescope.builtin')

keymap.set('n', '<leader>ff', builtin.find_files, {})

-- LSP-zero 
local opts = {buffer = bufnr, remap = false}
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

-- Debuger (dap) remap
local debugKey = '<leader>d'
keymap.set('n', debugKey .. 'c', function() require('dap').continue() end)
keymap.set('n', debugKey .. 'or', function() require('dap').step_over() end)
keymap.set('n', debugKey .. 'i', function() require('dap').step_into() end)
keymap.set('n', debugKey .. 'ot', function() require('dap').step_out() end)
keymap.set('n', debugKey .. 't', function() require('dap').toggle_breakpoint() end)
keymap.set('n', debugKey .. 's', function() require('dap').set_breakpoint() end)
keymap.set('n', debugKey .. 'sm', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
keymap.set('n', debugKey .. 'op', function() require('dap').repl.open() end)
keymap.set('n', debugKey .. 'r', function() require('dap').run_last() end)
keymap.set({'n', 'v'}, debugKey .. 'h', function() require('dap.ui.widgets').hover() end)
keymap.set({'n', 'v'}, debugKey .. 'p', function() require('dap.ui.widgets').preview() end)
keymap.set({'n', 'v'}, debugKey .. 'tr', function() require('dap').terminate() end)
keymap.set('n', debugKey .. 'f', function()
  local widgets = require('dap.ui.widgets')
  require('dap.ui.widgets').centered_float(widgets.frames)
end)
