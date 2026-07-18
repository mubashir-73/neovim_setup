local tools = require("josean.config.tools")
return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    for _, server in ipairs(tools.servers) do
      local config = {
        capabilities = capabilities,
      }

      if server == "lua_ls" then
        config.settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        }
      end
      vim.lsp.config(server, config)
      vim.lsp.enable(server)
    end
  end,
}
