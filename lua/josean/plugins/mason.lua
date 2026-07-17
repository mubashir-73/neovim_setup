return {
  "mason-org/mason.nvim",
  opts = {},
  dependencies = {
    {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      opts = {
        ensure_installed = {
          -- Language Servers
          "lua_ls",
          "ts_ls",
          "html",
          "cssls",
          "tailwindcss",
          "jsonls",
          "yamlls",
          "bashls",
          "dockerls",
          "docker_compose_language_service",
          "pyright",
          "sqlls",

          -- Formatters
          "stylua",
          "prettier",
          "black",
          "sqlfluff",

          -- Linters
          "eslint_d",
          "markdownlint",
        },
      },
    },
  },
}
