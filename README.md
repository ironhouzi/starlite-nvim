# `starlite-nvim`
Expedient and simple text highlighting using built in Neovim commands:

<kbd>\*</kbd>, <kbd>g\*</kbd>, <kbd>\#</kbd>, <kbd>g#</kbd>. Written in Lua.

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

## Prerequisites

- Neovim 5.0

## Setup

The plugin exposes four functions which can be manually mapped:

- `star()`
- `g_star()`
- `hash()`
- `g_hash()`

---

E.g:

```vim
nnoremap <silent> * :lua require'starlite'.star()<cr>
nnoremap <silent> g* :lua require'starlite'.g_star()<cr>
nnoremap <silent> # :lua require'starlite'.hash()<cr>
nnoremap <silent> g# :lua require'starlite'.g_hash()<cr>
```

### `star()`

Performs plugin behavior for
[`star`](https://neovim.io/doc/user/pattern.html#star).

### `g_star()`

Performs plugin behavior for
[`gstar`](https://neovim.io/doc/user/pattern.html#gstar).

### `hash()`

Performs plugin behavior for
[`#`](https://neovim.io/doc/user/pattern.html##).

### `g_hash()`

Performs plugin behavior for
[`g#`](https://neovim.io/doc/user/pattern.html#g#).
