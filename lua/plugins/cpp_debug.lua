local dap = require('dap')

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = 'C:\\Users\\bleck\\.vscode\\extensions\\vadimcn.vscode-lldb-1.9.2\\adapter\\codelldb',
    args = {"--port", "${port}"},

    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    args = function()
        local argsString = vim.fn.input('Enter arguments separated by spaces: ')
        local argsTable = {}

        for arg in argsString:gmatch("%S+") do
            table.insert(argsTable, arg)
        end

        return argsTable
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

dap.configurations.c = dap.configurations.cpp
