<p align="center">
<img src ="https://i.imgur.com/q8xbTsC.png">
</p><hr>

# About

<div style="text-align: justify">
	Catppuccino.nvim is a NeoVim plugin that provides multiple colorschemes based on the Catppuccino color palette but varying their properties. Apart from the eye-candy colorschemes, Catppuccino.nvim also provides integrations with multiple plugins and tools you are probably already using (e.g. Treesitter, Native LSP, ...).
</div>

# 🌲 Table of Contents

-   [Flavors](#-flavors)
-   [Features](#-features)
-   [Notices](#-notices)
-   [Installation](#-installation)
    -   [Prerequisites](#prerequisites)
    -   [Adding the plugin](#adding-the-plugin)
    -   [Setup](#setup)
        -   [For init.lua](#for-initlua)
        -   [For init.vim](#for-initvim)
    -   [Updating](#updating)
-   [Usage](#usage)
    -   [Commands](#commands)
    -   [API](#api)
        -   [Modules](#modules)
-   [Configuration](#-configuration)
    -   [General](#general)
    -   [Styles](#styles)
    -   [Integrations](#integrations)
        -   [Special Integrations](#special-integrations)
    -   [List of Colorschemes](#list-of-colorschemes)
    -   [Overwriting colors & hi groups](overwriting-colors--hi-groups)
    -   [Hooks](#hooks)
-   [Contribute](#-contribute)
    -   [Need Help](#need-help)
-   [Inspirations](#-inspirations)
-   [License](#-license)
-   [FAQ](#-faq)
-   [To-Do](#-to-do)

# 🍨 Flavors

## Dark Catppuccino

<img src ="https://i.imgur.com/qdTDwaC.png">

## Neon Latte

<img src ="https://i.imgur.com/WlzSh2v.png">

## Soft Manilo

<img src ="https://i.imgur.com/J51jWId.png">

## Light Melya

<img src ="https://i.imgur.com/r2XNdh5.png">

# 📷 Extra

## Tmux Ports

<p align="center">
  <img alt="Neon Latte" src="https://i.imgur.com/JblSone.png" width="47%">
&nbsp; &nbsp; &nbsp;
  <img alt="Dark Catppuccino" src="https://i.imgur.com/rBXjPbL.png" width="47%">
</p>

<p align="center">
  <img alt="Soft Manilo" src="https://i.imgur.com/6PZgZPs.png" width="47%">
&nbsp; &nbsp; &nbsp;
  <img alt="Light Melya" src="https://i.imgur.com/WdUUS4V.png" width="47%">
</p>

# 🎁 Features

-   Multiple colorschemes (AKA [flavors](#-flavors)) available!
-   Handy CLI.
-   Allows user remaps.
-   Extensible for many use cases.
-   Integrations with a lot of stuff:
    -   [Treesitter](https://github.com/tree-sitter/tree-sitter)
    -   [Native LSP](https://github.com/neovim/nvim-lspconfig)
    -   [Telescope](https://github.com/nvim-telescope/telescope.nvim)
    -   [LSP Saga](https://github.com/glepnir/lspsaga.nvim)
    -   [Trouble](https://github.com/folke/trouble.nvim)
    -   [WhichKey](https://github.com/folke/which-key.nvim)
    -   [Git signs](https://github.com/lewis6991/gitsigns.nvim)
    -   [BarBar](https://github.com/romgrk/barbar.nvim)
    -   [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
    -   [Lualine](https://github.com/hoob3rt/lualine.nvim)
    -   [Git Gutter](https://github.com/airblade/vim-gitgutter)
    -   [Fern](https://github.com/lambdalisue/fern.vim)
    -   [Lightline](https://github.com/itchyny/lightline.vim)
    -   [Dashboard](https://github.com/glepnir/dashboard-nvim)
    -   [Markdown](https://www.markdownguide.org/)
    -   [Lightspeed](https://github.com/ggandor/lightspeed.nvim)
    -   [Nvim-ts-Rainbow](https://github.com/p00f/nvim-ts-rainbow)
    -   [Sneak](https://github.com/justinmk/vim-sneak)
    -   [Hop](https://github.com/phaazon/hop.nvim)
    -   [Neogit](https://github.com/TimUntersberger/neogit)
    -   [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
    -   [Tmux](https://github.com/tmux/tmux)
    -   [Kitty](https://github.com/kovidgoyal/kitty)
    -   [Alacritty](https://github.com/alacritty/alacritty)

# 📺 Notices

Checkout the [CHANGELOG.md](https://github.com/Pocco81/Catppuccino.nvim/blob/main/CHANGELOG.md) file for more information on the notices below:

<ul>
  <li><b>03-09-21</b>: Ported Catppuccino themes to Tmux!</li>
  <li><b>01-09-21</b>: Added API and functionality for remapping colors and highlight groups + added lightspeed.nvim integration.</li>
  <li><b>29-08-21</b>: Refactored diffs and git related stuff, added the `CPClear` command and added option to set terminal colors</li>
  <li><b>22-08-21</b>: Just released!</li>
</ul>

<details>
<summary>Old notices...</summary>
<p>
<ul>
</ul>
</p>
</details>

# 📦 Installation

## Prerequisites

-   [NeoVim 0.5+](https://github.com/neovim/neovim/releases/tag/v0.5.0)

## Adding the plugin

You can use your favorite plugin manager for this. Here are some examples with the most popular ones:

### Vim-plug

```lua
Plug 'Pocco81/Catppuccino.nvim'
```

### Packer.nvim

```lua
use "Pocco81/Catppuccino.nvim"
```

### Vundle

```lua
Plugin 'Pocco81/Catppuccino.nvim'
```

### NeoBundle

```lua
NeoBundleFetch 'Pocco81/Catppuccino.nvim'
```

## Setup

There are already some sane defaults that you may like, however you can change them to match your taste. These are the defaults:

```lua
colorscheme = "dark_catppuccino",
transparency = false,
term_colors = false,
styles = {
	comments = "italic",
	functions = "italic",
	keywords = "italic",
	strings = "NONE",
	variables = "NONE",
},
integrations = {
	treesitter = true,
	native_lsp = {
		enabled = true,
		virtual_text = {
			errors = "italic",
			hints = "italic",
			warnings = "italic",
			information = "italic",
		},
		underlines = {
			errors = "underline",
			hints = "underline",
			warnings = "underline",
			information = "underline",
		}
	},
	lsp_trouble = false,
	lsp_saga = false,
	gitgutter = false,
	gitsigns = false,
	telescope = false,
	nvimtree = {
		enabled = false,
		show_root = false,
	},
	which_key = false,
	indent_blankline = {
		enabled = false,
		colored_indent_levels = false,
	},
	dashboard = false,
	neogit = false,
	vim_sneak = false,
	fern = false,
	barbar = false,
	bufferline = false,
	markdown = false,
	lightspeed = false,
	ts_rainbow = false,
	hop = false,
}
```

The way you setup the settings on your configuration varies on whether you are using vimL for this or Lua.

<details>
    <summary>For init.lua</summary>
<p>

```lua
local catppuccino = require("catppuccino")

-- configure it
catppuccino.setup(
    {
		colorscheme = "dark_catppuccino",
		transparency = false,
		term_colors = false,
		styles = {
			comments = "italic",
			functions = "italic",
			keywords = "italic",
			strings = "NONE",
			variables = "NONE",
		},
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = "italic",
					hints = "italic",
					warnings = "italic",
					information = "italic",
				},
				underlines = {
					errors = "underline",
					hints = "underline",
					warnings = "underline",
					information = "underline",
				}
			},
			lsp_trouble = false,
			lsp_saga = false,
			gitgutter = false,
			gitsigns = false,
			telescope = false,
			nvimtree = {
				enabled = false,
				show_root = false,
			},
			which_key = false,
			indent_blankline = {
				enabled = false,
				colored_indent_levels = false,
			},
			dashboard = false,
			neogit = false,
			vim_sneak = false,
			fern = false,
			barbar = false,
			bufferline = false,
			markdown = false,
			lightspeed = false,
			ts_rainbow = false,
			hop = false,
		}
	}
)
```

<br />
</details>

<details>
    <summary>For init.vim</summary>
<p>

```lua
lua << EOF
local catppuccino = require("catppuccino")

-- configure it
catppuccino.setup(
    {
		colorscheme = "dark_catppuccino",
		transparency = false,
		term_colors = false,
		styles = {
			comments = "italic",
			functions = "italic",
			keywords = "italic",
			strings = "NONE",
			variables = "NONE",
		},
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = "italic",
					hints = "italic",
					warnings = "italic",
					information = "italic",
				},
				underlines = {
					errors = "underline",
					hints = "underline",
					warnings = "underline",
					information = "underline",
				}
			},
			lsp_trouble = false,
			lsp_saga = false,
			gitgutter = false,
			gitsigns = false,
			telescope = false,
			nvimtree = {
				enabled = false,
				show_root = false,
			},
			which_key = false,
			indent_blankline = {
				enabled = false,
				colored_indent_levels = false,
			},
			dashboard = false,
			neogit = false,
			vim_sneak = false,
			fern = false,
			barbar = false,
			bufferline = false,
			markdown = false,
			lightspeed = false,
			ts_rainbow = false,
			hop = false,
		}
	}
)
EOF
```

<br />
</details>

After setting things up, you can load Catppuccino like so:

```vim
" Vim Script
colorscheme catppuccino
```

```lua
-- Lua
vim.cmd[[colorscheme catppuccino]]
```
Passing `catppuccino` to the `colorscheme` command will pick the colorscheme in the config. Optionally, you could pass one by its code name (e.g. `colorscheme neon_latte`).

For instructions on how to configure the plugin, check out the [configuration](#configuration) section.

## Updating

This depends on your plugin manager. If, for example, you are using Packer.nvim, you can update it with this command:

```lua
:PackerUpdate
```

# 🤖 Usage

## Commands

The provides commands that follows the _camel casing_ naming convention and have the `CP` prefix so that it's easy to remember that they are part of Catppuccino.nvim:

-   `:CPClear` clear all highlight groups.
-   `:colorscheme <colorscheme_name>` load a colorscheme, not necessarily a Catppuccino one. (Note: this is a built-in NVim command).

## API

The API allows you fetch data from Catppuccino. It can be required as a Lua module:

```lua
local cp_api = require("catppuccino.api.<module>")
```

### Modules

-   `colors`

```lua
cp_api.get_colors(<colorscheme>)
```

> Gets the colors from `<colorscheme>`. Returns two values: the first one is a table with a `status` field (for the exit status) and a `msg` field with an error message in case `status` is `false` (error), and the second value is a table with the colors. If it fails, it will return the colors from `dark_catppuccino`.

# 🐬 Configuration

Although settings already have self-explanatory names, here is where you can find info about each one of them and their classifications!

## General

This settings are unrelated to any group and are independent.

-   `colorscheme`: (String) code name of the color-scheme to be used. All of them can be found in the section below.
-   `transparency`: (Boolean) if true, disables setting the background color.
-   `term_colors`: (Boolean) if true, sets terminal colors (e.g. `g:terminal_color_0`).

## Styles

Handles the style of general hi groups (see `:h highlight-args`):

-   `comments`: (String) changed the style of the comments.
-   `functions`: (String) changed the style of the functions.
-   `keywords`: (String) changed the style of the keywords.
-   `strings`: (String) changed the style of the strings.
-   `variables`: (String) changed the style of the variables.

## Integrations

These integrations allow Catppuccino to set the theme of various plugins/stuff. To enable an integration you just need to set it to `true`, however, there are some special integrations...

If you'd like to know which highlight groups are being affected by Catppuccino, checkout this directory: [`lua/catppuccino/core/integrations/`](https://github.com/Pocco81/Catppuccino.nvim/tree/main/lua/catppuccino/core/integrations).

### Special Integrations

-   **Native Nvim LSP:** setting `enabled` to `true` enables this integration. In the inners tables you can set the style for the diagnostics, both `virtual_text` (what you see on the side) and `underlines` (what points directly at the thing (e.g. an error)).
-   **Lualine:** use this to set it up (Note: `catppuccino` is the only valid theme name. It will pick the one set in your config):

```lua
require('lualine').setup {
  options = {
    theme = "catppuccino"
	-- ... the rest of your lualine config
  }
}
```

-   **Lightline:** use this to set it up (Note: `catppuccino` is the only valid colorscheme name. It will pick the one set in your config):

```lua
let g:lightline = {'colorscheme': 'catppuccino'}
```

-   **Kitty:** Copy and paste the file corresponding to theme you want to use from [this directory](https://github.com/Pocco81/Catppuccino.nvim/tree/main/extra/kitty) on your Kitty config.
-   **Alacritty:** Copy and paste the file corresponding to theme you want to use from [this directory](https://github.com/Pocco81/Catppuccino.nvim/tree/main/extra/alacritty) on your Alacritty config.
-   **Tmux**: Follow the instructions [here](https://github.com/Pocco81/Catppuccino.nvim/tree/main/extra/tmux)
-   **Indent-blankline.nvim**: setting `enabled` to `true` enables this integration. `colored_indent_levels` enables char highlights per indent level. Follow the instructions [here](https://github.com/lukas-reineke/indent-blankline.nvim#with-custom-gindent_blankline_char_highlight_list) to set the latter up.
-   **NvimTree:** setting `enabled` to `true` enables this integration:

```lua
integration = {
  nvimtree = {
    enabled = true,
    show_root = true, -- makes the root folder not transparent
  }
}
```

## List of colorschemes

| Colorschemes     | Code Names         |
| ---------------- | ------------------ |
| Dark Catppuccino | `dark_catppuccino` |
| Neon Latte       | `neon_latte`       |
| Soft Manilo      | `soft_manilo`      |
| Light Melya      | `light_melya`      |

## Overwriting colors & hi groups

Both colors and highlight groups can be overwritten like so:

```lua
catppuccino.remap({<colors>},{<hi_groups>})
```

Since you want to overwrite hi groups, then it's likely that you'll want to use the API to get the colors from x colorscheme as well:

```lua
local err, colors = cp_api.get_colors("neon_latte")
```

Here is an example using the API to overwrite the color green and change the style of the comments:

```lua
local cp_api = require("catppuccino.api.colors")
local err, colors = cp_api.get_colors("neon_latte")

if err.status then -- good
	catppuccino.remap({
		green = "#ffffff"
	},
	{
		Comment = { fg = colors.comment, style = "bold" }, -- any comment
	})
end
```

-   For colorschemes: all editable fields are the same as the ones mentioned in any of the colorschemes found at: [`lua/catppuccino/color_schemes`](https://github.com/Pocco81/Catppuccino.nvim/tree/main/lua/catppuccino/color_schemes). You could also use one as a template, if you will.
-   For highlight groups: all the highlight groups have three editable fields: `fg` for the foreground, `bg` for the background and `style` for the style.

<br />
</details>

## Hooks

Use them to execute code at certain events [described by their names]. These are the ones available:

| Function           | Description                  |
| ------------------ | ---------------------------- |
| `before_loading()` | Before loading a colorscheme |
| `after_loading()`  | After loading a colorscheme  |

They can be used like so:

```lua
local catppuccino = require("catppuccino")

catppuccino.before_loading = function ()
	print("I ran before setting a colorscheme!")
end
```

# 🙋 FAQ

-   Q: **_"How can I view the doc from NeoVim?"_**
    A: Use `:help Catppuccino.nvim`

-   Q: **_"Why are the colorschemes named like that? Do they follow any convention(s)?"_**
    A: A colorscheme's name is constructed by two words: the first one is a word that represents the tonalities in the colors used and the second one is the name of a coffee drink from [this list](https://en.wikipedia.org/wiki/List_of_coffee_drinks).

# 👐 Contribute

See [CONTRIBUTING.md](https://github.com/Pocco81/Catppuccino.nvim/blob/dev/CONTRIBUTING.md).

# 💭 Inspirations

The following projects inspired the creation of Catppuccino.nvim. If possible, go check them out to see why they are so amazing :]

-   [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim): A clean, dark Neovim theme written in Lua, with support for lsp, treesitter and lots of plugins. Includes additional themes for Kitty, Alacritty, iTerm and Fish.
-   [norcalli/nvim-base16.lua](https://github.com/norcalli/nvim-base16.lua): Programmatic lua library for setting base16 themes in Neovim.

# 📜 License

Catppuccino.nvim is released under the GPL v3.0 license. It grants open-source permissions for users including:

-   The right to download and run the software freely
-   The right to make changes to the software as desired
-   The right to redistribute copies of the software
-   The right to modify and distribute copies of new versions of the software

For more convoluted language, see the [LICENSE file](https://github.com/Pocco81/Catppuccino.nvim/blob/main/LICENSE.md).

# 📋 TO-DO

**High Priority**

-   Add Aquamarine Frappé

**Low Priority**

-   Finish DOC
-   Add more integrations

<hr>
<p align="center">
	Enjoy!
</p>
