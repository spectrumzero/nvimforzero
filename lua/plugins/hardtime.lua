return { -- lazy.nvim
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {
      showmode = false,
      restriction_mode = "block",
      allow_different_key = true,
    },
  },
}
