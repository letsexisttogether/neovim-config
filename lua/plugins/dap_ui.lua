local dap, dapui = require("dap"), require("dapui")

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

dapui.setup({
  icons = { expanded = '▾', collapsed = '▸' },
  sidebar = {
    open_on_start = true, -- Open the DAP UI sidebar when debugging starts
  },
})

vim.cmd[[
  autocmd! User dap-terminated lua require'dapui'.close()
]]
