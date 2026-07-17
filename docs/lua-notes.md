# Lua Notes

## Tables

Tables are Lua's primary data structure.

They can behave like:

- Arrays
- Objects
- Dictionaries

Example:

```lua
local person = {
    name = "Mubashir",
    age = 20,
}
```

Equivalent JavaScript:

```js
const person = {
  name: "Mubashir",
  age: 20,
};
```

Arrays start at index **1**, not **0**.

---

## Lazy.nvim

Every plugin file returns a Lua table.

Lazy.nvim reads that table to determine:

- Which plugin to install
- When to load it
- Plugin options
- Dependencies
