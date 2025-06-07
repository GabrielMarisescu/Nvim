return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "javascript", "typescript", "tsx", "html" },
      highlight = { enable = true },
      incremental_selection = { enable = true },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["aa"] = "@attribute.outer",
            ["ia"] = "@attribute.inner",
          },
        },
      },
    })
  end,
}
