-- 记录yank历史<leader>p
return {
  "gbprod/yanky.nvim",
  opts = {
    vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)"),
    vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)"),
    vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)"),
    vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)"),
    vim.keymap.set("n", "<c-p>", "<Plug>(YankyPreviousEntry)"),
    vim.keymap.set("n", "<c-n>", "<Plug>(YankyNextEntry)"),
  },
}
