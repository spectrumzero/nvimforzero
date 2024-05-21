-- Keymaps are automatically loaded on the VeryLazy evnt
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- 设置映射，方便后续增添删减
local map = vim.keymap.set
local unmap = vim.keymap.del

-- 恢复原状
map("n", "s", "xi", { noremap = true })
map("n", "/", "/", { noremap = true })
unmap("n", "t")

-- 水平或垂直打开终端
-- map({ "n", "i" }, "<F6>", '<cmd>exe winheight(0)/3."split" | term<CR>')
-- map({ "n", "i" }, "<F6>", '<cmd>exe winwidth(0)/3."vsplit" | term<CR>')

-- 退出终端。像<cmd>...<cr>这样的写法，表示的是直接进入命令行模式执行相关命令
map("t", "<F5>", "<Cmd>q<CR>")

-- 定义按键映射，当按下 <Leader>j 时执行跳转
map("n", "<Leader>j", '<cmd>lua require("flash").jump()<CR>', { noremap = true, silent = true })

--toggleterm映射
map({ "i", "n" }, "<c-/>", "<cmd>ToggleTerm<cr>", { noremap = true })

--在vim中一键编译运行c程序

-- for hop.nvim
-- local hop = require("hop")
-- local directions = require("hop.hint").HintDirection
-- local positions = require("hop.hint").HintPosition
