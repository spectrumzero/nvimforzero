-- Someone said that vim doesn't need built-in debuggers. I think it is true. And this word may also imply that I shouldn't try to do everything, especially debugging, in nvim solely.
-- Even if I try to use dap to debug in nvim, things don't go more easily or conveniently than in vscode.
-- I have to say I learned a lot from the process of configuring dap. But the improvement of environment for developing brought by dap is slight. Vscode is still a good tool for debugging.
return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    -- variable define
    local dap = require("dap")
    local dapui = require("dapui")

    require("dapui").setup()
    -- dapui settings
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

    -- define lldb as debugger (define which debugger to use)(there is something going wrong with gdb...)
    dap.adapters.lldb = {
      type = "executable",
      command = "E:\\llvm-mingw-20231128-ucrt-x86_64\\bin\\lldb-vscode.exe",
      args = { "-i", "dap" },
    }

    -- configuration for c (define how to debug c)
    dap.configurations.c = {
      {
        name = "Launch",
        type = "lldb",
        request = "launch",
        program = function()
          return vim.fn.input("path to executable: ", "E:/lazycoding/Algorithm/build/Debug" .. "/", "file")
          -- return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopAtBeginningOfMainSubprogram = false,
      },
    }

    -- keymap
    vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<Leader>dc", dap.continue, {})
    vim.keymap.set("n", "<Leader>du", dapui.open, { noremap = true })
    vim.keymap.set("n", "<Leader>dC", dapui.close, { noremap = true })
  end,
}
