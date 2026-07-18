return {
  servers = {
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
  },
  formatters = {
    "stylua",
    "prettier",
    "black",
    "sqlfluff",
  },
  linters = {
    "eslint_d",
    "markdownlint",
  },
  ensure_installed = {
    --Servers
    "lua-language-server",
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
    --formatters
    "stylua",
    "prettier",
    "black",
    "sqlfluff",
    --linters
    "eslint_d",
    "markdownlint",
  },
}
