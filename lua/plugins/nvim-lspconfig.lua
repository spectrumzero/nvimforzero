return {
  "neovim/nvim-lspconfig",
  event = "LazyFile",
  enabled = true,
  dependencies = {
    "mason.nvim",
    { "williamboman/mason-lspconfig.nvim", config = function() end },
  },
  opts = {
    servers = {
      -- C++ LSP
      clangd = {},
      -- JavaScript LSP
      denols = {},
      -- HTML LSP
      html = {},
      -- CSS LSP
      cssls = {},
      -- Lua LSP
      lua_ls = {},
    },
  },
}
