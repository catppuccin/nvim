<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/dev/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/dev/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for NeoVim
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/dev/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
    <a href="https://github.com/catppuccin/nvim/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/nvim?colorA=1e1e28&colorB=c9cbff&style=for-the-badge&logo=starship style=for-the-badge"></a>
    <a href="https://github.com/catppuccin/nvim/issues"><img src="https://img.shields.io/github/issues/catppuccin/nvim?colorA=1e1e28&colorB=f7be95&style=for-the-badge"></a>
    <a href="https://github.com/catppuccin/nvim/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/nvim?colorA=1e1e28&colorB=b1e1a6&style=for-the-badge"></a>
</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/catppuccin/nvim/dev/assets/ss.png"/>
</p>

# About

This port of Catppuccin is special because it was the first one and the one that originated the project itself. Given this, it's important to acknowledge that it all didn't come to be what it is now out of nowhere. So, if you are interested in knowing more about the initial stages of the theme, you can find it under the [`old-catppuccino`](https://github.com/catppuccin/nvim/tree/old-catppuccino) branch.

# 🎁 Features

-   Handy CLI.
-   Extensible for many use cases.
-   Integrations with a bunch of plugins:
    -   [Treesitter](https://github.com/tree-sitter/tree-sitter)
    -   [Native LSP](https://github.com/neovim/nvim-lspconfig)
    -   [Telescope](https://github.com/nvim-telescope/telescope.nvim)
	- [Feline](https://github.com/feline-nvim/feline.nvim)
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
    -   [Nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

## Usage

You can use your favorite plugin manager for this. Here are some examples with the most popular ones:

#### Vim-plug

```lua
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
```

#### Packer.nvim

```lua
use({
	"catppuccin/nvim",
	as = "catppuccin"
})
```

#### Vundle

```lua
Plugin 'catppuccin/nvim', {'name': 'catppuccin'}
```

### Setup

There are already some sane defaults that you may like, however you can change them to match your taste. These are the defaults:

```lua
transparent_background = false,
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
		},
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
	cmp = false,
},
```

The way you setup the settings on your configuration varies on whether you are using vimL for this or Lua.

<details>
    <summary>For init.lua</summary>
<p>

```lua
local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup(
    {
		transparent_background = false,
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
				},
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
		},
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
local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup(
    {
		transparent_background = false,
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
				},
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
		},
	}
)
EOF
```

<br />
</details>

After setting things up, you can load catppuccin like so:

```vim
" Vim Script
colorscheme catppuccin
```

```lua
-- Lua
vim.cmd[[colorscheme catppuccin]]
```

### Configuration

Although settings already have self-explanatory names, here is where you can find info about each one of them and their classifications!

#### General

This settings are unrelated to any group and are independent.

-   `transparent_background`: (Boolean) if true, disables setting the background color.
-   `term_colors`: (Boolean) if true, sets terminal colors (e.g. `g:terminal_color_0`).

#### Styles

Handles the style of general hi groups (see `:h highlight-args`):

-   `comments`: (String) changed the style of the comments.
-   `functions`: (String) changed the style of the functions.
-   `keywords`: (String) changed the style of the keywords.
-   `strings`: (String) changed the style of the strings.
-   `variables`: (String) changed the style of the variables.

#### Integrations

These integrations allow catppuccin to set the theme of various plugins/stuff. To enable an integration you just need to set it to `true`, however, there are some special integrations...

If you'd like to know which highlight groups are being affected by catppuccin, checkout this directory: [`lua/catppuccin/core/integrations/`](https://github.com/catppuccin/nvim/tree/main/lua/catppuccin/core/integrations).

##### Special Integrations

- **Feline.nvim**: Catppuccin provides this integration as a compoenent that you can select on your Feline config:

```lua
require("feline").setup({
	components = require('catppuccin.core.integrations.feline'),
})
```

-   **Indent-blankline.nvim**: setting `enabled` to `true` enables this integration. `colored_indent_levels` enables char highlights per indent level. Follow the instructions [here](https://github.com/lukas-reineke/indent-blankline.nvim#with-custom-gindent_blankline_char_highlight_list) to set the latter up.
-   **Lightline:** use this to set it up (Note: `catppuccin` is the only valid colorscheme name. It will pick the one set in your config):

```lua
let g:lightline = {'colorscheme': 'catppuccin'}
```

-   **Lualine:** use this to set it up (Note: `catppuccin` is the only valid theme name. It will pick the one set in your config):

```lua
require('lualine').setup {
  options = {
    theme = "catppuccin"
	-- ... the rest of your lualine config
  }
}
```

-   **Native Nvim LSP:** setting `enabled` to `true` enables this integration. In the inners tables you can set the style for the diagnostics, both `virtual_text` (what you see on the side) and `underlines` (what points directly at the thing (e.g. an error)).
-   **NvimTree:** setting `enabled` to `true` enables this integration:

```lua
integration = {
  nvimtree = {
    enabled = true,
    show_root = true, -- makes the root folder not transparent
  }
}
```

### Extra

#### API

The API allows you fetch data from Catppuccin. It can be required as a Lua module:

```lua
local cp_api = require("catppuccin.api.<module>")
```

##### Modules

-   `colors`

```lua
cp_api.get_colors()
```

> Returns a table where the key is the name of the color and the value is its hex value.

#### Overwriting highlight groups

Highlight groups can be overwritten like so:

```lua
catppuccin.remap({ <hi_group> = { <fields> }, })
```

Here is an example:

```lua
local colors = require'catppuccin.api.colors'.get_colors() -- fetch colors with API
catppuccin.remap({ Comment = { fg = colors.catppuccin2 }, })
```

#### Hooks

Use them to execute code at certain events. These are the ones available:

| Function           | Description                  |
| ------------------ | ---------------------------- |
| `before_loading()` | Before loading a colorscheme |
| `after_loading()`  | After loading a colorscheme  |

They can be used like so:

```lua
local catppuccin = require("catppuccin")

catppuccin.before_loading = function ()
	print("I ran before loading Catppuccin!")
end
```

## 💝 Thanks to

-   [Pocco81](https://github.com/Pocco81)
