-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- wrap and check for spell in text filetypes
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("wrap_spell"),
  pattern = { "gitcommit", "markdown" },
  callback = function()
    --设置自动换行
    vim.opt_local.wrap = true
    -- 禁用拼写检查
    vim.opt_local.spell = false
  end,
})

-- 为终端缓冲区设置不显示行号
-- 首先创建一个自动命令组来避免命令重复定义的警告
vim.api.nvim_create_augroup("TermNoLineNumbers", { clear = true })
-- 当"TermOpen"事件触发时，这一自动命令会运行
vim.api.nvim_create_autocmd("TermOpen", {
  --所属上面自定义的组
  group = "TermNoLineNumbers",
  -- 适用于所有打开的终端缓冲区
  pattern = "*",
  -- 当自动命令触发时，callback函数会自动执行
  callback = function()
    vim.opt_local.number = false -- 禁用普通行号
    vim.opt_local.relativenumber = false -- 禁用相对行号
  end,
})
