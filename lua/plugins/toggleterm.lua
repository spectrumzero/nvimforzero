-- 更好用的终端
return {
  -- amongst your other plugins
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    enabled = true,
    config = function()
      require("toggleterm").setup({
        open_mapping = [[<c-,>]],
        hide_numbers = false,
        shade_filetypes = {},
        shade_terminals = true,
        insert_mappings = true,
        direction = "float",
      })
    end,
  },
}
