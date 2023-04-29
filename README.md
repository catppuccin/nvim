<!-- panvimdoc-ignore-start -->

<h3 align="center">
    <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
    <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
    Catppuccin for <a href="https://github.com/neovim/neovim">(Neo)</a><a href="https://github.com/vim/vim">vim</a>
    <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
    <a href="https://github.com/catppuccin/nvim/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/nvim?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
    <a href="https://github.com/catppuccin/nvim/issues"><img src="https://img.shields.io/github/issues/catppuccin/nvim?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
    <a href="https://github.com/catppuccin/nvim/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/nvim?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
This port of <a href="https://github.com/catppuccin/">Catppuccin</a> is special because it was the first one and the one that originated the project itself. Given this, it's important to acknowledge that it all didn't come to be what it is now out of nowhere. So, if you are interested in knowing more about the initial stages of the theme, you can find it under the <a href="https://github.com/catppuccin/nvim/tree/v0.1">v0.1</a> tag
</p>

<p align="center">
  <img src="https://user-images.githubusercontent.com/56817415/213472445-091e54fb-091f-4448-a631-fa6b2ba7d8a5.png"/>
</p>

# Flavours

<details>
<summary>Latte</summary>
<img src="https://user-images.githubusercontent.com/56817415/213473391-603bdc68-68f4-4877-a15a-b469040928b5.png"/>
</details>
<details>
<summary>Frappe</summary>
<img src="https://user-images.githubusercontent.com/56817415/213473368-16931b70-fd84-4a89-a698-1b1bca1f82de.png"/>
</details>
<details>
<summary>Macchiato</summary>
<img src="https://user-images.githubusercontent.com/56817415/213473285-7bd858be-6947-4d9e-8c01-2573cbc7e76c.png"/>
</details>
<details>
<summary>Mocha</summary>
<img src="https://user-images.githubusercontent.com/56817415/213471997-34837219-88cc-4db2-baca-e25813a89789.png"/>
</details>

**[Bake your own flavour!](https://github.com/catppuccin/nvim/#overwriting-colors)** Here are some **[config from our community](https://github.com/catppuccin/nvim/discussions/323)**: <a href="https://www.pixiv.net/en/artworks/101554989"><sub><sup>(background source)</sup></sub></a>
</p>

![nvimwalk-custom](https://user-images.githubusercontent.com/56817415/213480149-6ba92b81-1ada-46a4-89bd-4e2bb25d19c3.png)
<p align="center">

<!-- panvimdoc-ignore-end -->

# Features

- Supports both vim and neovim (Requires [neovim](https://github.com/neovim/neovim/) >= 0.8 or [vim](https://github.com/vim/vim) >= 9 compiled with [lua](https://github.com/lua/lua) >= 5.1)
- Highly configurable with 4 different flavours and [ability to create your own!](https://github.com/catppuccin/nvim/discussions/323)
- [Compile](https://github.com/catppuccin/nvim#Compile) user config for [fastest startuptime](https://www.reddit.com/r/neovim/comments/xxfpt3/catppuccinnvim_now_startup_in_1ms/)
- Integrations with lsp, treesitter and [a bunch of plugins](https://github.com/catppuccin/nvim#integrations)
- Supports for [many other applications](https://github.com/catppuccin/catppuccin)

# Installation

[lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{ "catppuccin/nvim", name = "catppuccin" }
```

[packer.nvim](https://github.com/wbthomason/packer.nvim)
```lua
use { "catppuccin/nvim", as = "catppuccin" }
```

[vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
```

# Usage

```vim
colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
```

```lua
vim.cmd.colorscheme "catppuccin"
```

# Configuration

There is no need to call `setup` if you don't want to change the default options and settings.

```lua
require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
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
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
```

Although settings already have self-explanatory names, here is where you can find info about each one of them and their classifications!

## General

This settings are unrelated to any group and are independent.

- `background`: (Table) Match :set background=light/dark with :Catppuccin background.light/dark
- `term_colors`: (Boolean) if true, sets terminal colors (e.g. `g:terminal_color_0`).
- `transparent_background`: (Boolean) if true, disables setting the background color.

## Dim inactive

This setting manages the ability to dim the inactive splits/windows/buffers displayed.

- `enabled`: (Boolean) if true, dims the background color of inactive window or buffer or split.
- `shade`: (string) sets the shade to apply to the inactive split or window or buffer.
- `percentage`: (number 0 < x < 1) percentage of the shade to apply to the inactive window, split or buffer.

## Styles

Handles the style of general hi groups (see `:h highlight-args`):

- `comments`: (Table) changed the style of the comments.
- `functions`: (Table) changed the style of the functions.
- `keywords`: (Table) changed the style of the keywords.
- `strings`: (Table) changed the style of the strings.
- `variables`: (Table) changed the style of the variables.

# Customize highlights

## Get catppuccin colors

```lua
local latte = require("catppuccin.palettes").get_palette "latte"
local frappe = require("catppuccin.palettes").get_palette "frappe"
local macchiato = require("catppuccin.palettes").get_palette "macchiato"
local mocha = require("catppuccin.palettes").get_palette "mocha"
```

Will returns a table where the key is the name of the color and the value is its hex value corresponding to each flavour.

## Overwriting colors

Colors can be overwritten using `color_overrides` in the setting, like so:

```lua
require("catppuccin").setup {
    color_overrides = {
        all = {
            text = "#ffffff",
        },
        latte = {
            base = "#ff0000",
            mantle = "#242424",
            crust = "#474747",
        },
        frappe = {},
        macchiato = {},
        mocha = {},
    }
}
```

<details>
<summary> <ins> Click here to see color palette document <ins></summary>

| Name      | Latte     | Frappe    | Macchiato | Mocha     | Usage           |
| --------- | --------- | --------- | --------- | --------- | --------------- |
| rosewater | `#dc8a78` | `#F2D5CF` | `#F4DBD6` | `#F5E0DC` | Winbar          |
| flamingo  | `#DD7878` | `#EEBEBE` | `#F0C6C6` | `#F2CDCD` | Target word     |
| pink      | `#ea76cb` | `#F4B8E4` | `#F5BDE6` | `#F5C2E7` | Just pink       |
| mauve     | `#8839EF` | `#CA9EE6` | `#C6A0F6` | `#CBA6F7` | Tag             |
| red       | `#D20F39` | `#E78284` | `#ED8796` | `#F38BA8` | Error           |
| maroon    | `#E64553` | `#EA999C` | `#EE99A0` | `#EBA0AC` | Lighter red     |
| peach     | `#FE640B` | `#EF9F76` | `#F5A97F` | `#FAB387` | Number          |
| yellow    | `#df8e1d` | `#E5C890` | `#EED49F` | `#F9E2AF` | Warning         |
| green     | `#40A02B` | `#A6D189` | `#A6DA95` | `#A6E3A1` | Diff add        |
| teal      | `#179299` | `#81C8BE` | `#8BD5CA` | `#94E2D5` | Hint            |
| sky       | `#04A5E5` | `#99D1DB` | `#91D7E3` | `#89DCEB` | Operator        |
| sapphire  | `#209FB5` | `#85C1DC` | `#7DC4E4` | `#74C7EC` | Constructor     |
| blue      | `#1e66f5` | `#8CAAEE` | `#8AADF4` | `#89B4FA` | Diff changed    |
| lavender  | `#7287FD` | `#BABBF1` | `#B7BDF8` | `#B4BEFE` | CursorLine Nr   |
| text      | `#4C4F69` | `#c6d0f5` | `#CAD3F5` | `#CDD6F4` | Default fg      |
| subtext1  | `#5C5F77` | `#b5bfe2` | `#B8C0E0` | `#BAC2DE` | Indicator       |
| subtext0  | `#6C6F85` | `#a5adce` | `#A5ADCB` | `#A6ADC8` | Float title     |
| overlay2  | `#7C7F93` | `#949cbb` | `#939AB7` | `#9399B2` | Popup fg        |
| overlay1  | `#8C8FA1` | `#838ba7` | `#8087A2` | `#7F849C` | Conceal color   |
| overlay0  | `#9CA0B0` | `#737994` | `#6E738D` | `#6C7086` | Fold color      |
| surface2  | `#ACB0BE` | `#626880` | `#5B6078` | `#585B70` | Default comment |
| surface1  | `#BCC0CC` | `#51576d` | `#494D64` | `#45475A` | Darker comment  |
| surface0  | `#CCD0DA` | `#414559` | `#363A4F` | `#313244` | Darkest comment |
| base      | `#EFF1F5` | `#303446` | `#24273A` | `#1E1E2E` | Default bg      |
| mantle    | `#E6E9EF` | `#292C3C` | `#1E2030` | `#181825` | Darker bg       |
| crust     | `#DCE0E8` | `#232634` | `#181926` | `#11111B` | Darkest bg      |
</details>

## Overwriting highlight groups

Global highlight groups can be overwritten in the setting like so:

```lua
custom_highlights = function(colors)
    return {
        <hl_group> = { <fields> }
    }
end
```

Here is an example:

```lua
require("catppuccin").setup {
    custom_highlights = function(colors)
        return {
            Comment = { fg = colors.flamingo },
            ["@constant.builtin"] = { fg = colors.peach, style = {} },
            ["@comment"] = { fg = colors.surface2, style = { "italic" } },
        }
    end
}
```

Per flavour highlight groups can be overwritten in the setting like so:

```lua
highlight_overrides = {
    all = function(colors) -- Global highlight, will be replaced with custom_highlights if exists
        return {
            <hl_group> = { <fields> }
        }
    end, -- Same for each flavour
    latte = function(latte) end,
    frappe = function(frappe) end,
    macchiato = function(macchiato) end,
    mocha = function(mocha) end,
}
```

Here is an example:

```lua
require("catppuccin").setup {
  highlight_overrides = {
        all = function(colors)
            return {
                NvimTreeNormal = { fg = colors.none },
                CmpBorder = { fg = "#3e4145" },
            }
        end,
        latte = function(latte)
            return {
                Normal = { fg = latte.base },
            }
        end,
        frappe = function(frappe)
            return {
                ["@comment"] = { fg = frappe.surface2, style = { "italic" } },
            }
        end,
        macchiato = function(macchiato)
            return {
                LineNr = { fg = macchiato.overlay1 },
            }
        end,
        mocha = function(mocha)
            return {
                Comment = { fg = mocha.flamingo },
            }
        end,
    },
}
```

# Integrations

catppuccin-nvim provides theme support for other plugins in the Neovim ecosystem and extended Neovim functionality through _integrations_.

Below is a list of supported plugins and their corresponding integration module. (See [Special integrations](https://github.com/catppuccin/nvim#special-integrations) for more.)

| Plugin                                                                                | Module              |
| ------------------------------------------------------------------------------------- | ------------------- |
| [alpha-vim](https://github.com/goolord/alpha-nvim)                                    | alpha               |
| [aerial.nvim](https://github.com/stevearc/aerial.nvim)                                | aerial              |
| [barbar.nvim](https://github.com/romgrk/barbar.nvim)                                  | barbar              |
| [barbecue.nvim](https://github.com/utilyre/barbecue.nvim)                             | barbecue, Special   |
| [beacon.nvim](https://github.com/DanilaMihailov/beacon.nvim)                          | beacon              |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)                         | Special             |
| [coc.nvim](https://github.com/neoclide/coc.nvim)                                      | coc_nvim, Special   |
| [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)                           | dashboard           |
| [feline.nvim](https://github.com/feline-nvim/feline.nvim/)                            | Special             |
| [fern.vim](https://github.com/lambdalisue/fern.vim)                                   | fern                |
| [fidget.nvim](https://github.com/j-hui/fidget.nvim)                                   | Special             |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                           | gitsigns            |
| [harpoon](https://github.com/ThePrimeagen/harpoon)                                    | harpoon             |
| [headlines.nvim](https://github.com/lukas-reineke/headlines.nvim)                     | headlines           |
| [hop.nvim](https://github.com/phaazon/hop.nvim)                                       | hop                 |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)       | Special             |
| [leap.nvim](https://github.com/ggandor/leap.nvim)                                     | leap                |
| [lightline.vim](https://github.com/itchyny/lightline.vim)                             | Special             |
| [lightspeed.nvim](https://github.com/ggandor/lightspeed.nvim)                         | lightspeed          |
| [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim/)                              | lsp_saga, Special   |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)                          | Special             |
| [markdown](https://www.markdownguide.org/)                                            | markdown            |
| [mason](https://github.com/williamboman/mason.nvim)                                   | mason               |
| [mini.nvim](https://github.com/echasnovski/mini.nvim)                                 | mini                |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)                       | neotree             |
| [neogit](https://github.com/TimUntersberger/neogit)                                   | neogit              |
| [neotest](https://github.com/nvim-neotest/neotest)                                    | neotest             |
| [noice.nvim](https://github.com/folke/noice.nvim)                                     | noice               |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                       | cmp                 |
| [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)                                | dap, Special        |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap)                                  | dap, Special        |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)                            | native_lsp, Special |
| [nvim-navic](https://github.com/SmiteshP/nvim-navic/)                                 | navic, Special      |
| [nvim-notify](https://github.com/rcarriga/nvim-notify)                                | notify              |
| [nvim-semantic-tokens](https://github.com/theHamsta/nvim-semantic-tokens)             | semantic_tokens     |
| [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)                          | nvimtree            |
| [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) | treesitter_context  |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)                 | treesitter          |
| [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)                            | ts_rainbow          |
| [nvim-ts-rainbow2](https://github.com/HiPhish/nvim-ts-rainbow2)                       | ts_rainbow2         |
| [octo.nvim](https://github.com/pwntester/octo.nvim)                                   | octo                |
| [overseer.nvim](https://github.com/stevearc/overseer.nvim)                            | overseer            |
| [pounce.nvim](https://github.com/rlane/pounce.nvim)                                   | pounce              |
| [symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)              | symbols_outline     |
| [telekasten.nvim](https://github.com/renerocksai/telekasten.nvim)                     | telekasten          |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)                    | telescope           |
| [trouble.nvim](https://github.com/folke/trouble.nvim)                                 | lsp_trouble         |
| [vim-airline](https://github.com/vim-airline/vim-airline)                             | Special             |
| [vim-clap](https://github.com/liuchengxu/vim-clap)                                    | Special             |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter)                            | gitgutter           |
| [vim-illuminate](https://github.com/RRethy/vim-illuminate)                            | illuminate          |
| [vim-sandwich](https://github.com/machakann/vim-sandwich)                             | sandwich            |
| [vim-sneak](https://github.com/justinmk/vim-sneak)                                    | vim_sneak           |
| [vimwiki](https://github.com/vimwiki/vimwiki)                                         | vimwiki             |
| [which-key.nvim](https://github.com/folke/which-key.nvim)                             | which_key           |

> "Special" module means Special integrations, see <https://github.com/catppuccin/nvim#special-integrations> for more details

These integrations allow catppuccin to set the theme of various plugins. To enable an integration you just need to set it to `true`, for example:

```lua
require("catppuccin").setup({
    integrations = {
        <module> = <boolean>
    }
})
```

<details> <summary> <ins> Click here to see an example config </ins> </summary>

```lua
require("catppuccin").setup({
    integrations = {
        aerial = false,
        barbar = false,
        beacon = false,
        cmp = true,
        coc_nvim = false,
        dashboard = true,
        fern = false,
        fidget = false,
        gitgutter = false,
        gitsigns = true,
        harpoon = false,
        headlines = false,
        hop = false,
        illuminate = false,
        leap = false,
        lightspeed = false,
        lsp_saga = false,
        lsp_trouble = false,
        markdown = true,
        mason = true,
        mini = false,
        neogit = false,
        neotest = false,
        neotree = false,
        noice = false,
        notify = false,
        nvimtree = true,
        octo = false,
        overseer = false,
        pounce = false,
        sandwich = false,
        semantic_tokens = false,
        symbols_outline = false,
        telekasten = false,
        telescope = true,
        treesitter = true,
        treesitter_context = false,
        ts_rainbow = false,
        ts_rainbow2 = false,
        vim_sneak = false,
        vimwiki = false,
        which_key = false,

        -- Special integrations, see https://github.com/catppuccin/nvim#special-integrations
        barbecue = {
            dim_dirname = true,
            bold_basename = true,
            dim_context = false,
            alt_background = false,
        },
        dap = {
            enabled = false,
            enable_ui = false,
        },
        indent_blankline = {
            enabled = true,
            colored_indent_levels = false,
        },
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = { "italic" },
                hints = { "italic" },
                warnings = { "italic" },
                information = { "italic" },
            },
            underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" },
            },
        },
        navic = {
            enabled = false,
            custom_bg = "NONE",
        },
    },
})
```

</details>

## Special integrations


<details> <summary>barbecue.nvim</summary>

Use this to set it up (**Note**: `catppuccin` is the only valid theme name. It will pick the one set in your config):

```lua
require("barbecue").setup {
  theme = "catppuccin",
}
```

The directory name color shown is dimmed by default, you can customize this setting.

```lua
integrations = {
  barbecue = {
    dim_dirname = true,
    bold_basename = true,
    dim_context = false,
  }
}
```
</details>

<details> <summary>bufferline.nvim</summary>

Update your bufferline config to use the Catppuccin components:

> **Note**: bufferline needs to be loaded after setting up catppuccin or it will highlight incorrectly

```lua
use "akinsho/bufferline.nvim" {
  after = "catppuccin",
  config = function()
    require("bufferline").setup {
      highlights = require("catppuccin.groups.integrations.bufferline").get()
    }
  end
}
```

Configurations are self-explanatory, see `:h bufferline-highlights` for detailed explanations:

```lua
local mocha = require("catppuccin.palettes").get_palette "mocha"
bufferline.setup {
    highlights = require("catppuccin.groups.integrations.bufferline").get {
        styles = { "italic", "bold" },
        custom = {
            all = {
                fill = { bg = "#000000" },
            },
            mocha = {
                background = { fg = mocha.text },
            },
            latte = {
                background = { fg = "#000000" },
            },
        },
    },
}
```

</details>

<details> <summary>coc.nvim</summary>

Setting `enabled` to `true` enables this integration. 

```lua
coc_nvim = true,
```
> **Note**: coc.nvim by default link to native lsp highlight groups so config from `native_lsp` will also apply to coc

In the inners tables you can set the style for the diagnostics, both `virtual_text` (what you see on the side) and `underlines` (what points directly at the thing (e.g. an error)).

```
native_lsp = {
    enabled = true,
    virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
    },
    underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
    },
},
```

</details>

<details> <summary>feline.nvim</summary>

Update your Feline config to use the Catppuccin components:

```lua
local ctp_feline = require('catppuccin.groups.integrations.feline')

ctp_feline.setup()

require("feline").setup({
    components = ctp_feline.get(),
})
```

Notice that calling `setup()` is optional. You may pass a lua table in order to change assets, settings and the colors per vim mode.

Here are the defaults:

```lua
local clrs = require("catppuccin.palettes").get_palette()
local ctp_feline = require('catppuccin.groups.integrations.feline')
local U = require "catppuccin.utils.colors"

ctp_feline.setup({
    assets = {
        left_separator = "",
        right_separator = "",
        mode_icon = "",
        dir = "",
        file = "",
        lsp = {
            server = "",
            error = "",
            warning = "",
            info = "",
            hint = "",
        },
        git = {
            branch = "",
            added = "",
            changed = "",
            removed = "",
        },
    },
    sett = {
        text = U.vary_color({ latte = latte.base }, clrs.surface0),
        bkg = U.vary_color({ latte = latte.crust }, clrs.surface0),
        diffs = clrs.mauve,
        extras = clrs.overlay1,
        curr_file = clrs.maroon,
        curr_dir = clrs.flamingo,
        show_modified = true -- show if the file has been modified
    },
    mode_colors = {
        ["n"] = { "NORMAL", clrs.lavender },
        ["no"] = { "N-PENDING", clrs.lavender },
        ["i"] = { "INSERT", clrs.green },
        ["ic"] = { "INSERT", clrs.green },
        ["t"] = { "TERMINAL", clrs.green },
        ["v"] = { "VISUAL", clrs.flamingo },
        ["V"] = { "V-LINE", clrs.flamingo },
        [""] = { "V-BLOCK", clrs.flamingo },
        ["R"] = { "REPLACE", clrs.maroon },
        ["Rv"] = { "V-REPLACE", clrs.maroon },
        ["s"] = { "SELECT", clrs.maroon },
        ["S"] = { "S-LINE", clrs.maroon },
        [""] = { "S-BLOCK", clrs.maroon },
        ["c"] = { "COMMAND", clrs.peach },
        ["cv"] = { "COMMAND", clrs.peach },
        ["ce"] = { "COMMAND", clrs.peach },
        ["r"] = { "PROMPT", clrs.teal },
        ["rm"] = { "MORE", clrs.teal },
        ["r?"] = { "CONFIRM", clrs.mauve },
        ["!"] = { "SHELL", clrs.green },
    }
})
```

> **Note**: Currently feline [doesn't officially support custom themes](https://github.com/feline-nvim/feline.nvim/issues/302). In order for `:colorscheme catppuccin-<flavour>` to work you could add this autocmd as a workaround:

```lua
vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        package.loaded["feline"] = nil
        package.loaded["catppuccin.groups.integrations.feline"] = nil
        require("feline").setup {
            components = require("catppuccin.groups.integrations.feline").get(),
        }
    end,
})
```

</details>

<details> <summary>fidget.nvim</summary>

Set fidget module to `true`

```lua
fidget = true
```

Then set `window.blend` to `0`:

```lua
require("fidget").setup {
    window = {
        blend = 0,
    },
    -- ... the rest of your fidget config
}
```

</details>

<details> <summary>indent-blankline.nvim</summary>

Setting `enabled` to `true` enables this integration. `colored_indent_levels` enables char highlights per indent level. Follow the instructions [here](https://github.com/lukas-reineke/indent-blankline.nvim#with-custom-gindent_blankline_char_highlight_list) to set the latter up.

```lua
indent_blankline = {
    enabled = true,
    colored_indent_levels = false,
},
```

</details>

<details> <summary>lightline.vim</summary>

Use this to set it up (**Note**: `catppuccin` is the only valid colorscheme name. It will pick the one set in your config):

```vim
let g:lightline = {'colorscheme': 'catppuccin'}
```

</details>


<details> <summary>lspsaga.nvim</summary>

For custom Lsp Kind Icon and Color

```lua
require("lspsaga").setup {
    ui = {
        kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
    },
}
```

</details>

</details>

<details> <summary>lualine.nvim</summary>

Use this to set it up (**Note**: `catppuccin` is the only valid theme name. It will pick the one set in your config):

```lua
require('lualine').setup {
    options = {
        theme = "catppuccin"
        -- ... the rest of your lualine config
    }
}
```

</details>

</details>

<details> <summary>nvim-dap</a> & nvim-dap-ui</a> </summary>

Setting `enabled` to `true`:

```lua
integration = {
    dap = {
        enabled = true,
        enable_ui = true, -- enable nvim-dap-ui
    }
}
```

```lua
-- You NEED to override nvim-dap's default highlight groups, AFTER requiring nvim-dap
require("dap")

local sign = vim.fn.sign_define

sign("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = ""})
sign("DapBreakpointCondition", { text = "●", texthl = "DapBreakpointCondition", linehl = "", numhl = ""})
sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = ""})
```

</details>

<details> <summary>nvim-lspconfig</summary>

Setting `enabled` to `true` enables this integration. In the inners tables you can set the style for the diagnostics, both `virtual_text` (what you see on the side) and `underlines` (what points directly at the thing (e.g. an error)).

```lua
native_lsp = {
    enabled = true,
    virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" },
    },
    underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = { "underline" },
        information = { "underline" },
    },
},
```

</details>

<details> <summary>nvim-navic</summary>

Setting `enabled` to `true`:

```lua
navic = {
    enabled = false,
    custom_bg = "NONE",
},
```

```lua
-- You NEED to enable highlight in nvim-navic setting or it won't work
require("nvim-navic").setup {
    highlight = true
}
```

</details>

<details> <summary>vim-airline</summary>

Use this to set it up (**Note**: `catppuccin` is the only valid colorscheme name. It will pick the one set in your config):

```vim
let g:airline_theme = 'catppuccin'
```

</details>

</details>

<details> <summary>vim-clap</summary>

Use this to set it up:

```vim
let g:clap_theme = 'catppuccin'
```

</details>

If you'd like to know which highlight groups are being affected by catppuccin, check out this directory: [`lua/catppuccin/groups/integrations/`](https://github.com/catppuccin/nvim/tree/main/lua/catppuccin/groups/integrations).

# Compile

> **Note**: As of 7/10/2022, catppuccin should be able to automatically recompile when the setup table changed.

Catppuccin is a highly customizable and configurable colorscheme. This does however come at the cost of complexity and execution time.

Catppuccin can pre compute the results of your configuration and store the results in a compiled lua file. We use these precached values to set it's highlights.

## Config

By default catppuccin writes the compiled results into the system's cache directory. You can change the cache dir using:

```lua
require("catppuccin").setup({ -- Note: On windows we replace `/` with `\` by default
    compile_path = vim.fn.stdpath "cache" .. "/catppuccin"
})
```

## Compile commands

```vim
:CatppuccinCompile " Create/update the compile file
```

```lua

require('catppuccin').compile() -- Catppuccin also provide a function to work with the catppuccin compiler.
```

## Hooks

Use them to execute code at certain events. These are the ones available:

| Autocmd          | Description                  |
| ---------------- | ---------------------------- |
| `ColorSchemePre` | Before loading a colorscheme |
| `ColorScheme`    | After loading a colorscheme  |

They can be used like so:

```lua
vim.api.nvim_create_autocmd("ColorSchemePre", {
    pattern = "*",
    callback = function()
        print "I ran before loading Catppuccin!"
    end
})

vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        local colors = require("catppuccin.palettes").get_palette()
        -- do something with colors
    end
})
```

# FAQ

## Switch Catppuccin flavour on the fly

```lua
:Catppuccin mocha/macchiato/frappe/latte
```

> **Note**: the command has autocompletion enabled, so you can just press tab to cycle through the flavours

## Load other custom highlights later

```lua
require("catppuccin.lib.highlighter").syntax()
```

For example:

```lua
local colors = require("catppuccin.palettes").get_palette() -- fetch colors from palette
require("catppuccin.lib.highlighter").syntax({
    Comment = { fg = colors.surface0 }
})
```

> **Note**: Unlike the `:highlight` command which can update a highlight group, this function completely replaces the definition. (`:h nvim_set_hl`)

## Wrong treesitter highlights

Please disable `additional_vim_regex_highlighting`

```lua
require("nvim-treesitter.configs").setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
}
```

## Colors doesn't match preview screenshots

Catppuccin requires true color support AKA terminals support the full range of 16 million colors

- Supported: iterm2 (macOS), kitty, wezterm, alacritty, tmux, ...

Full list of support terminals can be found here: <https://github.com/termstandard/colors#truecolor-support-in-output-devices>

- Unsupported terminal: Terminal.app (macOS), Terminus, Terminology, ...

Full list of Unsupported terminals can be found here: <https://github.com/termstandard/colors#not-supporting-truecolor>

# Thanks to

- [Pocco81](https://github.com/Pocco81)
- [nullchilly](https://github.com/nullchilly)

<!-- panvimdoc-ignore-start -->

&nbsp;

<p align="center"><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" /></p>
<p align="center">Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
<p align="center"><a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a></p>

<!-- panvimdoc-ignore-end -->
