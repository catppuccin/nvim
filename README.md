<p align="center">
<img src ="https://i.imgur.com/q8xbTsC.png">
</p><hr>

# About

<div style="text-align: justify">
	Catppuccino.nvim is a NeoVim plugin that provides multiple colorschemes based on the Catppuccino color palette but varying their properties. Apart from the eye-candy colorschemes, Catppuccino.nvim also provides integrations with multiple plugins and tools you are probably already using (e.g. Treesitter, Native LSP, ...).
</div>

# 🌲 Table of Contents

-   [Features](#-features)
-   [Notices](#-notices)
-   [Installation](#-installation)
    -   [Prerequisites](#prerequisites)
    -   [Adding the plugin](#adding-the-plugin)
    -   [Setup Configuration](#setup-configuration)
        -   [For init.lua](#for-initlua)
        -   [For init.vim](#for-initvim)
    -   [Updating](#updating)
-   [Usage](#usage)
    -   [Commands](#commands)
-   [Configuration](#-configuration)
    -   [General](#general)
    -   [List of Colorschemes](#list-of-colorschemes)
-   [Contribute](#-contribute)
    -   [Need Help](#need-help)
-   [Inspirations](#-inspirations)
-   [License](#-license)
-   [FAQ](#-faq)
-   [To-Do](#-to-do)

# 🎁 Features

-   Multiple colorschemes available.
-   Handy CLI for loading colorschemes.
-   Allows user remaps.
-   Extensible for many use cases.
-   Integrations with a lot of stuff:
    -   Treesitter
    -   Native LSP
    -   Telescope
    -   LSP Saga
    -   LSP Trouble
    -   WhichKey
    -   Git signs
    -   BarBar
    -   NvimTree
    -   Lualine
    -   Git Gutter
    -   Fern
    -   Lightline
    -   And Many more...

# 📺 Notices

Checkout the [CHANGELOG.md](https://github.com/Pocco81/Catppuccino.nvim/blob/main/CHANGELOG.md) file for more information on the notices below:

<ul>
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

## Setup (configuration)

There are already some sane defaults that you may like, however you can change them to match your taste. These are the defaults:

```lua
colorscheme = "catppuccino",
transparency = false,
styles = {
	comments = "italic",
	fuctions = "italic",
	keywords = "italic",
	strings = "NONE",
	variables = "NONE",
},
integrations = {
	treesitter = true,
	native_lsp = {
		enabled = true,
		styles = {
			errors = "italic",
			hints = "italic",
			warnings = "italic",
			information = "italic"
		}
	},
	lsp_trouble = false,
	lsp_saga = false,
	gitgutter = false,
	gitsigns = false,
	telescope = false,
	nvimtree = false,
	which_key = false,
	indent_blankline = false,
	dashboard = false,
	neogit = false,
	vim_sneak = false,
	fern = false,
	barbar = false,
	bufferline = false,
	markdown = false,
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
		colorscheme = "catppuccino",
		transparency = false,
		styles = {
			comments = "italic",
			fuctions = "italic",
			keywords = "italic",
			strings = "NONE",
			variables = "NONE",
		},
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				styles = {
					errors = "italic",
					hints = "italic",
					warnings = "italic",
					information = "italic"
				}
			},
			lsp_trouble = false,
			lsp_saga = false,
			gitgutter = false,
			gitsigns = false,
			telescope = false,
			nvimtree = false,
			which_key = false,
			indent_blankline = false,
			dashboard = false,
			neogit = false,
			vim_sneak = false,
			fern = false,
			barbar = false,
			bufferline = false,
			markdown = false,
		}
	}
)

-- load it
catppuccino.load()
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
		colorscheme = "catppuccino",
		transparency = false,
		styles = {
			comments = "italic",
			fuctions = "italic",
			keywords = "italic",
			strings = "NONE",
			variables = "NONE",
		},
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				styles = {
					errors = "italic",
					hints = "italic",
					warnings = "italic",
					information = "italic"
				}
			},
			lsp_trouble = false,
			lsp_saga = false,
			gitgutter = false,
			gitsigns = false,
			telescope = false,
			nvimtree = false,
			which_key = false,
			indent_blankline = false,
			dashboard = false,
			neogit = false,
			vim_sneak = false,
			fern = false,
			barbar = false,
			bufferline = false,
			markdown = false,
		}
	}
)

-- load it
catppuccino.load()
EOF
```

<br />
</details>

For instructions on how to configure the plugin, check out the [configuration](#configuration) section.

## Updating

This depends on your plugin manager. If, for example, you are using Packer.nvim, you can update it with this command:

```lua
:PackerUpdate
```

# 🤖 Usage

## Commands

The only command provided follows the _camel casing_ naming convention and has the `CP` prefix so that it's easy to remember that it's part of Catppuccino.nvim:

-   `:CPLoad <colorscheme>` loads the passed `<colorscheme>`.

# 🐬 Configuration

Although settings already have self-explanatory names, here is where you can find info about each one of them and their classifications!

## General

This settings are unrelated to any group and are independent.

-   `colorscheme`: (String) code name of the color-scheme to be used. All of them can be found in the section below.

### List of colorschemes

| Colorschemes     | Code Names    |
| ---------------- | ------------- |
| Catppuccino Dark | `catppuccino` |
| Neon Latte       | `neon_latte`  |
| Light Melya      | `light_melya` |

&nbsp;

<img src ="https://i.imgur.com/qdTDwaC.png">
<p align="center">
	Catppuccino Dark
</p><hr>

<img src ="https://i.imgur.com/WlzSh2v.png">
<p align="center">
	Neon Latte
</p><hr>

<img src ="https://i.imgur.com/r2XNdh5.png">
<p align="center">
	Light Melya
</p><hr>

# 🙋 FAQ

-   Q: **_"How can I view the doc from NeoVim?"_**
    A: Use `:help Catppuccino.nvim`

-   Q: **_"Why are the colorschemes named like that? Do they follow any convention(s)?"_**
    A: A colorscheme's name is constructed by two words: the first one is a word that represents the tonalities in the colors used and the second one is the name of a coffee drink from [this list](https://en.wikipedia.org/wiki/List_of_coffee_drinks).

# 🫂 Contribute

Pull Requests are welcomed as long as they are properly justified and there are no conflicts. If your PR has something to do with the README or in general related with the documentation, I'll gladly merge it! Also, when writing code for the project **you must** use the [.editorconfig](https://github.com/Pocco81/Catppuccino.nvim/blob/main/.editorconfig) file on your editor so as to "maintain consistent coding styles". For instructions on how to use this file refer to [EditorConfig's website](https://editorconfig.org/).

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
