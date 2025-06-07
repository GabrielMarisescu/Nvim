return {
  "nvim-telescope/telescope.nvim",
  optional = true,

  keys = {
    { "<leader><Space>", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    { "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    { "<leader>/", LazyVim.pick("live_grep", { root = false }), desc = "Grep (Root Dir)" },
  },
  opts = {
    defaults = {
      prompt_prefix = " ",
      selection_caret = " ",
      path_display = { "tail" },
      dynamic_preview_title = true,
      winblend = 10,
      sorting_strategy = "ascending",
      -- layout_strategy = "vertical",
      layout_config = {
        prompt_position = "bottom",
        height = 0.95,
      },
    },
  },
}
