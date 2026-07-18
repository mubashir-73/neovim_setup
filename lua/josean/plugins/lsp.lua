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
            runtime = {
              version = "LuaJIT",
            },

            diagnostics = {
              globals = { "vim", "diagnostics_dict", "context" },
            },

            workspace = {
              checkThirdParty = false,
            },

            telemetry = {
              enable = false,
            },
          },
        }
      end
      vim.lsp.config(server, config)
      vim.lsp.enable(server)
    end
  end,
}
