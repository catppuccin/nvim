# 🎨 DEADBEEF.nvim

A dark, vibrant colorscheme for Neovim and Vim with rich accent colors and excellent syntax highlighting.

<p align="center">
    <a href="https://github.com/sayo9394/deadbeef.nvim/stargazers"><img src="https://img.shields.io/github/stars/sayo9394/deadbeef.nvim?style=for-the-badge&colorA=292d3e&colorB=98bc37"></a>
    <a href="https://github.com/sayo9394/deadbeef.nvim/issues"><img src="https://img.shields.io/github/issues/sayo9394/deadbeef.nvim?style=for-the-badge&colorA=292d3e&colorB=ff9d35"></a>
    <a href="https://github.com/sayo9394/deadbeef.nvim/blob/main/LICENSE.md"><img src="https://img.shields.io/github/license/sayo9394/deadbeef.nvim?style=for-the-badge&colorA=292d3e&colorB=569cd6"></a>
</p>

## ✨ Features

- **Single focused theme** - One carefully crafted dark colorscheme
- **Fast performance** - Compiled theme for instant startup
- **Highly configurable** - Extensive customization options
- **Rich integrations** - Built-in support for popular plugins (LSP, Treesitter, Telescope, Neo-tree, and more)
- **Broad compatibility** - Supports both Neovim (≥ 0.8) and Vim (≥ 9 with Lua ≥ 5.1)

## 📦 Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "sayo9394/deadbeef.nvim",
  name = "deadbeef",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "deadbeef"
  end,
}
```

### [mini.deps](https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-deps.md)

```lua
add({ source = "sayo9394/deadbeef.nvim", name = "deadbeef" })
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "sayo9394/deadbeef.nvim",
  as = "deadbeef",
  config = function()
    vim.cmd.colorscheme "deadbeef"
  end,
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'sayo9394/deadbeef.nvim', { 'as': 'deadbeef' }
```

## 🚀 Usage

```vim
colorscheme deadbeef
```

```lua
vim.cmd.colorscheme "deadbeef"
```

## ⚙️ Configuration

There is no need to call `setup` if you don't want to change the default options.

```lua
require("deadbeef").setup({
    transparent_background = false, -- disables setting the background color
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive windows
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    lsp_styles = {
        virtual_text = {
            errors = {},
            warnings = {},
            information = {},
            hints = {},
        },
        underlines = {
            errors = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
            hints = { "underline" },
        },
        inlay_hints = {
            background = false,
        },
    },
    integrations = {
        cmp = true,
        gitsigns = true,
        neotree = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
        lsp_trouble = true,
        which_key = true,
        mason = true,
        lazy = true,
        snacks = true,
        oil = true,
        indent_blankline = {
            enabled = true,
            scope_color = "",
            colored_indent_levels = false,
        },
    },
    color_overrides = {},
    highlight_overrides = {},
})

-- setup must be called before loading
vim.cmd.colorscheme "deadbeef"
```

## 🎨 Customization

### Getting the palette

```lua
local palette = require("deadbeef.palettes.deadbeef")
-- Returns a table where the key is the name of the color and the value is the hex code
-- Example: palette.blue, palette.green, palette.text, etc.
```

### Available colors

The DEADBEEF palette includes:
- **Accent colors**: `rosewater`, `flamingo`, `pink`, `mauve`, `red`, `maroon`, `peach`, `yellow`, `green`, `teal`, `sky`, `sapphire`, `blue`, `lavender`
- **Text hierarchy**: `text`, `subtext1`, `subtext0`, `overlay2`, `overlay1`, `overlay0`
- **Background hierarchy**: `surface2`, `surface1`, `surface0`, `base`, `mantle`, `crust`

### Overwriting colors

Colors can be overwritten using `color_overrides`:

```lua
require("deadbeef").setup({
    color_overrides = {
        text = "#ffffff",
        base = "#000000",
        -- override any color from the palette
    },
})
```

### Overwriting highlight groups

```lua
require("deadbeef").setup({
    highlight_overrides = {
        Comment = { fg = palette.flamingo },
        ["@variable"] = { fg = palette.text, style = { "italic" } },
        CmpBorder = { fg = palette.surface2 },
    },
})
```

## 🔌 Integrations

DEADBEEF has built-in support for the following plugins:

- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [snacks.nvim](https://github.com/folke/snacks.nvim)
- [oil.nvim](https://github.com/stevearc/oil.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)

All integrations are enabled by default. You can disable them in the `integrations` table:

```lua
require("deadbeef").setup({
    integrations = {
        cmp = false,
        -- disable specific integrations
    },
})
```

## ⚡ Compile

DEADBEEF is compiled by default for optimal performance. The theme is cached to ensure fast startup times.

To manually recompile the theme (useful during development):

```vim
:DeadbeefCompile
```

Or in Lua:

```lua
require("deadbeef").compile()
```

The compiled theme is stored in your cache directory (`vim.fn.stdpath("cache") .. "/deadbeef"`).

### Auto-compile on save (for development)

```lua
vim.g.deadbeef_debug = true
```

This will automatically recompile the theme when you save files in the `deadbeef/` directory.

## 🙏 Acknowledgments

This project was originally forked from [catppuccin/nvim](https://github.com/catppuccin/nvim) and has been adapted to provide a unique DEADBEEF colorscheme.

## 📄 License

[MIT](LICENSE.md)
