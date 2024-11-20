return {
  "neovim/nvim-lspconfig",
  event = "LazyFile",
  enabled = true,
  dependencies = {
    "mason.nvim",
    { "williamboman/mason-lspconfig.nvim", config = function() end },
  },
}
