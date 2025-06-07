local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node
local i = ls.insert_node

ls.add_snippets("typescriptreact", {

  s("ue", {
    t("useEffect(() => {"),
    t({ "", "  " }),
    i(1, "// Effect logic"),
    t({ "", "}, []);" }),
  }),

  s("rfc", {
    t({
      "import { useTranslations } from '@illimity/core/i18n';",
      "import { Box, Typography } from '@orion/ui';",
      "import React, { FC } from 'react';",
      "",
    }),
    -- Interface definition
    t("interface "),
    f(function()
      return vim.fn.expand("%:t:r") .. "Props"
    end, {}),
    t(" {}"),
    t({ "", "" }),
    -- Component definition
    t("export const "),
    f(function()
      return vim.fn.expand("%:t:r")
    end, {}),
    t(": FC<"),
    f(function()
      return vim.fn.expand("%:t:r") .. "Props"
    end, {}),
    t("> = () => {"),
    t({ "", "  const t = useTranslations('');", "" }),
    t({ "", "  return (" }),
    t({ "    <>" }), -- Opening fragment
    t({ '      <Typography fontSize="2xl" mb15 mt5 fontBold>' }),
    t({ "        {t('name')}" }),
    t({ "      </Typography>" }),
    t({ "" }),
    t({ "      <Box mt13>" }),
    t({ '        <Typography fontSize="md" mt4>' }),
    t({ "          test" }),
    t({ "        </Typography>" }),
    t({ "      </Box>" }),
    t({ "    </>" }), -- Closing fragment
    t({ "  );" }),
    t({ "};", "" }),
    -- Export statement
    t("export default "),
    f(function()
      return vim.fn.expand("%:t:r")
    end, {}),
    t(";"),
  }),
})
