## Update Goal

Now that Mason is ready, we'll build lsp.lua around the native Neovim 0.12 flow:

Configure servers with vim.lsp.config()
Enable them with vim.lsp.enable()
Connect Blink's completion capabilities
Add diagnostics, inlay hints, and document highlights
Reuse and improve the LspAttach keymaps you already have

This is where your editor will go from "plugins installed" to "fully functioning IDE," and you'll understand every major component involved.

# Neovim 0.12 Migration

## Goal

A modern Neovim configuration built using native APIs.

---

# Phase 0 - Foundation

- [x] Learn Lua basics
- [x] Understand Lazy.nvim plugin specs
- [x] Clean old plugins
- [x] Backup config

---

# Phase 1 - Completion

- [ ] Remove nvim-cmp
- [ ] Install blink.cmp
- [ ] Learn completion pipeline

---

# Phase 2 - LSP

- [ ] Native vim.lsp.config()
- [ ] Mason
- [ ] Auto-install servers
- [ ] Keymaps
- [ ] Inlay hints
- [ ] Document highlight
- [ ] Diagnostics

---

# Phase 3 - Treesitter

- [ ] Modern parser config
- [ ] Text objects
- [ ] Incremental selection

---

# Phase 4 - Formatting

- [ ] Conform
- [ ] Format on save

---

# Phase 5 - Linting

- [ ] nvim-lint
- [ ] Mason tool installer

---

# Phase 6 - Polish

- [ ] Fidget
- [ ] Better diagnostics
- [ ] UI improvements

---

## Plugin Architecture

Completion

- blink.cmp

LSP

- Native

Formatting

- conform.nvim

Linting

- nvim-lint

Treesitter

- nvim-treesitter
