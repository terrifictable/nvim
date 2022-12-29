
local dap = require("dap")
dap.adapters.cppdbg = {
    id = "cppdbg",
    type = "executable",
    command = "/home/terrific/Downloads/extension/debugAdapters/bin/OpenDebugAD7",
}
dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopAtEntry = true,
        setupCommands = {
            {
                text = '-enable-pretty-printing',
                description =  'enable pretty printing',
                ignoreFailures = false
            },
        },
    },
    {
        name = 'Attach to gdbserver :1234',
        type = 'cppdbg',
        request = 'launch',
        MIMode = 'gdb',
        miDebuggerServerAddress = 'localhost:1234',
        miDebuggerPath = '/usr/bin/gdb',
        cwd = '${workspaceFolder}',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        setupCommands = {
            {
                text = '-enable-pretty-printing',
                description =  'enable pretty printing',
                ignoreFailures = false
            },
        },

    },
}

dap.adapters.go = {
    type = 'executable';
    command = 'node';
    args = {os.getenv('HOME') .. '/vscode-go/dist/debugAdapter.js'};
}
dap.configurations.go = {
    {
        type = 'go';
        name = 'Debug';
        request = 'launch';
        showLog = false;
        program = "${file}";
        dlvToolPath = vim.fn.exepath('dlv')  -- Adjust to where delve is installed
    },
}

dap.adapters.bashdb = {
    type = 'executable';
    command = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/bash-debug-adapter';
    name = 'bashdb';
}
dap.configurations.sh = {
    {
        type = 'bashdb';
        request = 'launch';
        name = "Launch file";
        showDebugOutput = true;
        pathBashdb = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/extension/bashdb_dir/bashdb';
        pathBashdbLib = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/extension/bashdb_dir';
        trace = true;
        file = "${file}";
        program = "${file}";
        cwd = '${workspaceFolder}';
        pathCat = "cat";
        pathBash = "/bin/bash";
        pathMkfifo = "mkfifo";
        pathPkill = "pkill";
        args = {};
        env = {};
        terminalKind = "integrated";
    }
}








vim.keymap.set("n", "<leader>db", function()
    dap.toggle_breakpoint()
end)
vim.keymap.set("n", "<leader>dc", function()
    dap.continue()
end)
vim.keymap.set("n", "<leader>dso", function()
    dap.setp_over()
end)
vim.keymap.set("n", "<leader>dsi", function()
    dap.setp_into()
end)
vim.keymap.set("n", "<leader>dr", function()
    dap.repl.open()
end)




