local myutils = {}

-- (目前相对路径设置还是有点问题，但绝对路径没有问题)
-- 利用nvim提供的接口来获取当前文件的相对路径
-- 有利于在 cmake 中便捷地去修改要编译的单文件
function myutils.copy_relative_path()
  -- rhs是vim自己提供的接口。()内的参数可以变的。
  local current_file = vim.fn.expand("%")
  -- 对路径的格式修正，获取相对路径
  local relative_path = vim.fn.fnamemodify(current_file, ":~:.")
  local clipboard_content = relative_path
  clipboard_content = ".\\" .. clipboard_content
  clipboard_content = string.gsub(clipboard_content, "\\", "/") -- 把默认的 \ 分隔符换成 /
  vim.fn.setreg("+", clipboard_content)
end

-- copy 当前的文件名，不带后缀
function myutils.copy_current_filename()
  local current_file = vim.fn.expand("%:t") -- 仅获取当前文件的文件名部分，不包含前面的路径
  local clipboard_content = current_file
  clipboard_content = string.gsub(clipboard_content, "%..+", "")
  vim.fn.setreg("+", clipboard_content)
end

-- 获取当前文件的绝对路径
-- 有利于在 cmake 中便捷地去修改要编译的单文件
function myutils.copy_absolute_path()
  local current_file = vim.fn.expand("%")
  local clipboard_content = string.gsub(current_file, "\\", "/") -- 把默认的 \ 分隔符换成 /
  vim.fn.setreg("+", clipboard_content)
end

return myutils
