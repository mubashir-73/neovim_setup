local group = vim.api.nvim_create_augroup("UserLspConfig", {})

vim.api.nvim_create_autocmd("LspAttach", {
  group = group,

  callback = function(ev)
    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, {
        buffer = ev.buf,
        silent = true,
        desc = "LSP: " .. desc,
      })
    end

    -- Navigation
    map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", "Goto Definition")
    map("n", "gD", vim.lsp.buf.declaration, "Goto Declaration")
    map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", "Goto Implementation")
    map("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", "Goto Type Definition")
    map("n", "gR", "<cmd>Telescope lsp_references<CR>", "Goto References")

    -- Information
    map("n", "K", vim.lsp.buf.hover, "Hover Documentation")

    -- Actions
    map("n", "<leader>rn", vim.lsp.buf.rename, "Rename Symbol")
    map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code Action")

    -- Diagnostics
    map("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", "Buffer Diagnostics")
    map("n", "<leader>d", vim.diagnostic.open_float, "Line Diagnostics")

    map("n", "[d", function()
      vim.diagnostic.jump({ count = -1, float = true })
    end, "Previous Diagnostic")

    map("n", "]d", function()
      vim.diagnostic.jump({ count = 1, float = true })
    end, "Next Diagnostic")

    -- LSP Management
    map("n", "<leader>rs", "<cmd>LspRestart<CR>", "Restart LSP")
  end,
})
