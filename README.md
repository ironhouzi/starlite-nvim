# `starlite-nvim`
Expedient and simple text highlighting using built in Neovim commands: 
`*`, `g*`, `#`, `g#`. Written in Lua.

---

## Introduction

This plugin changes the behavior for normal mode commands `star` and `#`
along with their counterparts `gstar` and `g#`.

When executing any of these commands for a new cursor word, they will only
highlight the cursor word without jumping to the next occurrence. The
original behavior of these commands jump to the next occurrence every time.
Only after repeating the starlite command will the cursor jump to the next
occurrence.

While there are many excellent plugins for text highlighting, this plugin aims
for simplicity that should cover most of your highlighting needs.

---

## Prerequisites

- Neovim 5.0

---

## Setup

The plugin exposes four functions which can be manually mapped:

- `highlight.star()`
- `highlight.g_star()`
- `highlight.hash()`
- `highlight.g_hash()`

E.g:

```vim
nnoremap * :lua require'starlite'.highlight.star()<cr>
nnoremap g* :lua require'starlite'.highlight.g_star()<cr>
nnoremap # :lua require'starlite'.highlight.hash()<cr>
nnoremap g# :lua require'starlite'.highlight.g_hash()<cr>
```

### `highlight.star()`

        Performs plugin behavior for
        [`star`](https://neovim.io/doc/user/pattern.html#star).

### `highlight.g_star()`

        Performs plugin behavior for
        [`gstar`](https://neovim.io/doc/user/pattern.html#gstar).

### `highlight.hash()`

        Performs plugin behavior for
        [`#`](https://neovim.io/doc/user/pattern.html##).

### `highlight.g_hash()`

        Performs plugin behavior for
        [`g#`](https://neovim.io/doc/user/pattern.html#g#).
