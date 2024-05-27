local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import any extras modules here
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    -- { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  -- install = { colorscheme = { "habamax", "tokyonight" } },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

-- 终端设置
require("toggleterm").setup({
  open_mapping = [[<c-\>]],
  hide_numbers = false,
  shade_filetypes = {},
  shade_terminals = true,
  insert_mappings = true,
  direction = "float",
})

--主题设置
require("tokyonight").setup({
  -- use the night style
  style = "moon",
  -- disable italic for functions
  styles = {
    functions = {},
  },
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end,
})

--lualine
require("lualine").setup({
  options = {
    theme = "auto",
  },
})

--其它主题
-- require("nordic").setup({
--   -- Enable bold keywords.
--   bold_keywords = true,
--   -- Enable italic comments.
--   italic_comments = true,
--   -- Enable brighter float border.
--   -- Swap the dark background with the normal one.
--   swap_backgrounds = false,
--   -- Override the styling of any highlight group.
--   override = {},
--   -- Cursorline options.  Also includes visual/selection.
--   cursorline = {
--     -- Bold font in cursorline.
--     bold = false,
--     -- Bold cursorline number.
--     bold_number = true,
--     -- Available styles: 'dark', 'light'.
--     style = "light",
--     -- Blending the cursorline bg with the buffer bg.
--     blend = 0.85,
--   },
--   noice = {
--     -- Available styles: `classic`, `flat`.
--     style = "classic",
--   },
--   telescope = {
--     -- Available styles: `classic`, `flat`.
--     style = "flat",
--   },
--   leap = {
--     -- Dims the backdrop when using leap.
--     dim_backdrop = false,
--   },
--   ts_context = {
--     -- Enables dark background for treesitter-context window
--     dark_background = true,
--   },
-- })
-- require("nordic").load()
--
