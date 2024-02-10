return {
  {
    "tom-anders/telescope-vim-bookmarks.nvim",
    dependencies = { "telescope.nvim" },
    lazy = false,
    keys = {
      { "<leader>bm", "<cmd>Telescope vim_bookmarks all<cr>", desc = "All bookmarks" },
    },
  },
  {
    "MattesGroeger/vim-bookmarks",
    lazy = false,
    keys = {
      { "<leader>ba", ":BookmarkToggle<cr>", desc = "Bookmark toggle" },
    },
  },
}
