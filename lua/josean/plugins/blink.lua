return {
  "Saghen/blink.cmp",

  event = "InsertEnter",

  version = "*",

  dependencies = {
    "rafamadriz/friendly-snippets",
  },

  opts = {
    keymap = {
      preset = "default",

      ["<C-k>"] = { "select_prev", "fallback" },
      ["<C-j>"] = { "select_next", "fallback" },

      ["<CR>"] = { "accept", "fallback" },

      ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
    },

    appearance = {
      nerd_font_variant = "mono",
    },

    completion = {
      documentation = {
        auto_show = true,
      },
    },

    sources = {
      default = {
        "lsp",
        "path",
        "snippets",
        "buffer",
      },
    },

    fuzzy = {
      implementation = "prefer_rust_with_warning",
    },
  },
}
