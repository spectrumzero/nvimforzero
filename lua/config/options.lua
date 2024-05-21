-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.relativenumber = false

--设置shell，保证终端正确解析命令
opt.shell = "pwsh"
opt.shellcmdflag = "-command"
opt.shellquote = '"'
opt.shellxquote = ""
opt.modelines = 0
opt.showcmd = true

--设置conceal的级别
opt.conceallevel = 0

--透明度
vim.g.neovide_transparency = 1

--hide the mouse when typing
vim.g.neovide_hide_mouse_when_typing = true

--动画效果
vim.g.neovide_cursor_animation_length = 0.06
vim.g.neovide_cursor_vfx_mode = "railgun"

--禁用拼写检查
opt.spell = false

--
opt.guifont = { "Hack Nerd Font Mono", "FiraCode Nerd Font Propo", "华文新魏", ":h12" }
opt.guicursor =
  "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkoff0-blinkon0-Cursor/lCursor,sm:block-blinkwait0-blinkoff0-blinkon0"