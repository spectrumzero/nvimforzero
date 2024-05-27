-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 覆盖光标颜色
vim.cmd("highlight Cursor gui=NONE guifg=bg guibg=#33FF86")

-- 添加新的模组，custom是自己定义的，lazyvim不会自动读取。
require("custom.customcmd")
