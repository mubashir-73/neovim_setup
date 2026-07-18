# Neovim 0.12 Modernization Roadmap

## Goal

Build a modern Neovim configuration using Neovim 0.12 native APIs while understanding how every major subsystem works.

---

# Phase 0 - Foundation ✅

- [x] Learn essential Lua
- [x] Understand Lazy.nvim plugin specs
- [x] Learn plugin loading (event/lazy/config/opts)
- [x] Clean legacy plugins
- [x] Backup old configuration
- [x] Understand Neovim runtime architecture

---

# Phase 1 - Completion ✅

## blink.cmp

- [x] Remove nvim-cmp
- [x] Install blink.cmp
- [x] Understand LSP completion pipeline
- [x] Connect Blink capabilities to LSP

Learned:

- LSP capabilities
- Completion providers
- Snippets
- Capability negotiation

---

# Phase 2 - Native LSP ✅

## Native vim.lsp

- [x] Replace old lspconfig setup()
- [x] Learn vim.lsp.config()
- [x] Learn vim.lsp.enable()
- [x] Understand server configs
- [x] Configure Mason
- [x] Auto-install servers
- [x] Debug PATH & executables
- [x] Understand Mason package names vs LSP config names
- [x] Fix LuaLS configuration names
- [x] Learn workspace root detection

Learned:

- Mason package
- Executable
- LSP config
- Root markers
- Client lifecycle

---

# Phase 3 - LSP Features 🚧

## Editor Features

- [ ] LspAttach autocmd
- [ ] Buffer-local keymaps
- [ ] Rename
- [ ] Code Actions
- [ ] Hover
- [ ] References
- [ ] Signature Help
- [ ] Definitions
- [ ] Type Definitions
- [ ] Implementations

## Diagnostics

- [ ] Diagnostic configuration
- [ ] Floating diagnostics
- [ ] Signs
- [ ] Virtual text
- [ ] Severity sorting

## Nice Features

- [ ] Inlay hints
- [ ] Document highlight
- [ ] Semantic tokens

---

# Phase 4 - LuaLS Configuration 🚧

- [ ] Configure lua_ls settings
- [ ] Remove "Undefined global vim"
- [ ] Workspace library
- [ ] LuaJIT runtime
- [ ] Disable telemetry
- [ ] Third-party library handling

---

# Phase 5 - Treesitter ✅

- [x] Modern Treesitter setup
- [x] Incremental selection
- [x] Highlighting
- [x] Indentation
- [x] Autotag

Still to do:

- [ ] Text Objects
- [ ] Playground (optional)

---

# Phase 6 - Formatting 🚧

## conform.nvim

- [ ] Install conform.nvim
- [ ] Configure formatters
- [ ] Format on save
- [ ] Fallback to LSP formatting
- [ ] Learn formatter pipeline

---

# Phase 7 - Linting 🚧

## nvim-lint

- [ ] Install nvim-lint
- [ ] Configure linters
- [ ] Auto lint
- [ ] Integrate Mason tool installer

---

# Phase 8 - Telescope Modernization 🚧

- [ ] Update Telescope config
- [ ] Learn pickers
- [ ] Learn previewers
- [ ] Learn extensions
- [ ] Optimize mappings

---

# Phase 9 - Polish 🚧

UI

- [ ] Fidget.nvim
- [ ] Better diagnostics UI
- [ ] Notification improvements

Editing

- [ ] Better folding
- [ ] Better statusline integration
- [ ] Better quickfix workflow

Performance

- [ ] Lazy profiling
- [ ] Startup optimization

---

# Architecture Learned ✅

## Plugin Manager

- [x] Lazy.nvim

## Completion

- [x] blink.cmp

## LSP

- [x] Native vim.lsp

## Package Manager

- [x] Mason

## Syntax

- [x] Treesitter

## Formatting

- [ ] conform.nvim

## Linting

- [ ] nvim-lint

---

# Deep Concepts Learned

- [x] Lazy plugin lifecycle
- [x] opts vs config
- [x] Mason package names
- [x] LSP config names
- [x] Executable names
- [x] PATH handling
- [x] Capabilities
- [x] Client lifecycle
- [x] Root detection
- [x] Native LSP architecture
