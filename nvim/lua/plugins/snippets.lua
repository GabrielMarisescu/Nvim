return {
  "L3MON4D3/LuaSnip",
  config = function()
    require("luasnip").config.set_config({
      update_events = "TextChanged,TextChangedI",
      enable_autosnippets = true,
    })

    require("luasnip.loaders.from_lua").lazy_load({
      paths = { vim.fn.stdpath("config") .. "/lua/snippets" },
    })
  end,
}
