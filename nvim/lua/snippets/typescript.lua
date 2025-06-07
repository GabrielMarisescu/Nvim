local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node
local i = ls.insert_node

ls.add_snippets("typescript", {
  s("rfh", {
    t({
      "import { useState, useEffect } from 'react';",
      "",
      "interface Use",
      f(function()
        return vim.fn.expand("%:t:r") -- Use the file name without extension
      end),
      "Props {",
      "  // Define your props here",
      "}",
      "",
    }),
    -- Custom hook function definition
    t("const use"),
    f(function()
      return vim.fn.expand("%:t:r") -- Use the file name without extension
    end),
    t(" = ({}) => {"),
    t({ "", "  const [state, setState] = useState<{}>();", "" }),
    t({ "  useEffect(() => {", "    // Side effect logic here", "  }, []);", "" }),
    t({ "", "  return state;" }),
    t({ "};", "" }),
    -- Export statement
    t({ "", "export default use" }),
    f(function()
      return vim.fn.expand("%:t:r") -- Use the file name without extension
    end),
    t(";"),
  }),
})
