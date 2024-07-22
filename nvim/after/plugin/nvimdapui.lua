local dap, dapui = require("dap"), require("dapui")

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end




dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = 'C:/tools/neovim/nvim-win64/config/lldb/extension/adapter/codelldb',
    args = {"--port", "${port}"},

    -- On windows you may have to uncomment this:
    detached = false,
  }
}
-- commented dap.configurations.cpp = {
-- commented     type="executable",
-- commented     name="lldb",
-- commented     executable={
-- commented         command="C:/Program Files/LLVM/bin/lldb.exe"
-- commented     }
-- commented }



dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('C:/Program Files/LLVM/bin/lldb.exe', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

vim.keymap.set("n","<leader>dt",dap.toggle_breakpoint,{})
vim.keymap.set("n","<leader>dc",dap.continue,{})
