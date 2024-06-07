-- 类似vscode浮动导航页，跳转到上一个或下一个使用的buffer
return {
  "ghillb/cybu.nvim",
  branch = "main", -- timely updates
  -- branch = "v1.x", -- won't receive breaking changes
  requires = { "nvim-tree/nvim-web-devicons", "nvim-lua/plenary.nvim" }, -- optional for icon support
  config = function()
    local ok, cybu = pcall(require, "cybu")
    if not ok then
      return
    end
    cybu.setup({
      display_time = 750,
    })
    vim.keymap.set({ "n", "v" }, "<c-s-tab>", "<plug>(CybuLastusedPrev)")
    vim.keymap.set({ "n", "v" }, "<c-tab>", "<plug>(CybuLastusedNext)")
  end,
}
