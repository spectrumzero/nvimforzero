-- 不同模式下光标具有不同的颜色
return {
  {
    "mvllow/modes.nvim",
    tag = "v0.2.0",
    config = function()
      require("modes").setup({
        colors = {
          copy = "#ee3a57",
          delete = "#424246",
          insert = "#bdc7e7",
          visual = "#0de0ee",
        },
      })
    end,
    enabled = true,
  },
}
