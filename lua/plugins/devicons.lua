return {
  -- 配置文件的图标
  -- `:NvimWebDeviconsHiTest`命令，用于查看所有图标以及其高亮

  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup({
      -- your personnal icons can go here (to override)
      -- you can specify color or cterm_color instead of specifying both of them
      -- DevIcon will be appended to `name`

      -- globally enable different highlight colors per icon (default to true)
      -- if set to false all icons will have the default icon's color
      color_icons = true,

      -- globally enable default icons (default to false)
      -- will get overriden by `get_icons` option
      default = true,

      -- globally enable "strict" selection of icons - icon will be looked up in
      -- different tables, first by filename, and if not found by extension; this
      -- prevents cases when file doesn't have any extension but still gets some icon
      -- because its name happened to match some extension (default to false)
      strict = true,

      -- 配置文件图标，以文件名或扩展名为依据，配置图标的形状、颜色等
      -- same as `override` but specifically for overrides by filename
      -- takes effect when `strict` is true
      override_by_filename = {
        [".gitignore"] = {
          icon = "",
          color = "#f1502f",
          -- 将颜色和图标关联到特定的文件类型，可以随意命名
          name = "Gitignore",
        },
      },
      -- same as `override` but specifically for overrides by extension
      -- takes effect when `strict` is true
      override_by_extension = {
        ["log"] = {
          icon = "",
          color = "#81e043",
          name = "Log",
        },
        ["exe"] = {
          icon = "",
          color = "#549142",
          name = "Exe",
        },
      },
      -- same as `override` but specifically for operating system
      -- takes effect when `strict` is true
      override_by_operating_system = {
        ["apple"] = {
          icon = "",
          color = "#A2AAAD",
          cterm_color = "248",
          name = "Apple",
        },
      },
    })
  end,
  enabled = true,
}
