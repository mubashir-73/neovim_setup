local tools = require("josean.config.tools")
return {
  "mason-org/mason.nvim",
  opts = {},
  dependencies = {
    {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      opts = {
        ensure_installed = {
          tools.ensure_installed,
        },
      },
    },
  },
}
