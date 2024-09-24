-- return {
--   {
--     "folke/tokyonight.nvim",
--     lazy=false,
--     opts = {
--       transparent = true,
--     },
--     {
--       "LazyVim/LazyVim",
--       opts = {
--         colorscheme = "tokyonight",
--       },
--     },
--   },
-- }
-- return {
--   "folke/tokyonight.nvim",
--   opts = {
--     transparent = true,
--     styles = {
--       sidebars = "transparent",
--       floats = "transparent",
--     },
--   },
-- }
return {
  -- Tokyonight theme setup
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        -- sidebars = "transparent",
        -- floats = "transparent",
      },
    },
  },
  -- LazyVim setup to load the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
