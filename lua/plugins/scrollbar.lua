-- 滚动条
return {
  {
    "petertriho/nvim-scrollbar",
    config = function()
      require("scrollbar").setup({})
    end,
    enabled = false,
  },
}
