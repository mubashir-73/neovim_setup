return {
  "nvim-lualine/lualine.nvim",

  event = "VeryLazy",

  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status")

    local function lsp_names()
      local clients = vim.lsp.get_clients({ bufnr = 0 })

      if #clients == 0 then
        return "No LSP"
      end

      local names = {}

      for _, client in ipairs(clients) do
        table.insert(names, client.name)
      end

      return table.concat(names, " ")
    end

    lualine.setup({
      options = {
        theme = "kanagawa",
        globalstatus = true,

        component_separators = {
          left = "│",
          right = "│",
        },

        section_separators = {
          left = "",
          right = "",
        },

        disabled_filetypes = {
          statusline = {
            "alpha",
            "dashboard",
            "lazy",
          },
        },
      },

      sections = {
        lualine_a = {
          {
            "mode",
            icon = "",
          },
        },
        lualine_b = {
          "branch",
          "diff",
        },
        lualine_c = {
          {
            "filename",
            path = 1,
          },
        },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = {
              fg = "#ff9e64",
            },
          },
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
          },
          {
            lsp_names,
            icon = "",
          },
          "encoding",
          "fileformat",
          "filetype",
        },
        lualine_y = {
          "progress",
        },
        lualine_z = {
          "location",
        },
      },
    })
  end,
}
