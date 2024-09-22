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

-- 退出终端。像<cmd>...<cr>这样的写法，表示的是直接进入命令行模式执行相关命令
-- map("t", "<F5>", "<Cmd>q<CR>")

-- 定义按键映射，当按下 <Leader>j 时执行跳转
map("n", "<Leader>j", '<cmd>lua require("flash").jump()<CR>', { noremap = true, silent = true })

-- 打开yank的历史，但需要先执行:lua require("telescope").load_extension("yank_history")
map("n", "<Leader>p", "<cmd>Telescope yank_history<CR>", { noremap = true, silent = true })

--toggleterm映射
map({ "i", "n" }, "<c-/>", "<cmd>ToggleTerm<cr>", { noremap = true })

-- 快捷键复制当前缓冲区的相对路径
map("n", "<Leader>Pr", "<cmd>CpRelativePath<CR>", { noremap = true })

-- 快捷键复制当前缓冲区的绝对路径
map("n", "<Leader>Pa", "<cmd>CpAbsolutePath<CR>", { noremap = true })

-- 复制当前缓冲区文件的基本名称
map("n", "<Leader>Pb", "<cmd>CpFileName<CR>", { noremap = true })

-- fzf in the current directory (non-recursive).
map({ "n", "i" }, "<c-t>", "<cmd>FzfLua files<cr>", { noremap = true })
