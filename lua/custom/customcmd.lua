-- 调用utils模组中写好了的函数
-- copy current relative path
vim.cmd([[
command! -nargs=0 CpRelativePath lua require("custom.utils").copy_relative_path()
]])

-- copy current filename only
vim.cmd([[
command! -nargs=0 CpFileName lua require("custom.utils").copy_current_filename()
]])

-- copy current absolute path
vim.cmd([[
command! -nargs=0 CpAbsolutePath lua require("custom.utils").copy_absolute_path()
]])
