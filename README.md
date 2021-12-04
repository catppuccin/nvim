<p align="center">
  <h2 align="center">😸 Catppuccin for NeoVim</h2>
</p>

<p align="center">Warm mid-tone dark theme to show off your vibrant self!</p>

<p align="center">
  <img src="https://raw.githubusercontent.com/catppuccin/catppuccin/dev/assets/misc/sample.png"/>
</p>

# About

This port of Catppuccin is special because it was the first one and the one that originated the project itself. Given this, it's important to acknowledge that it all didn't come to be what it is now out of nowhere. So, if you are interested in knowing more about the initial stages of the theme, you can find it under the [`old-catppuccino`](https://github.com/catppuccin/nvim/tree/old-catppuccino) branch.

# 🎁 Features

- Handy CLI.
- Extensible for many use cases.
- Integrations with a bunch of plugins:
  - [Treesitter](https://github.com/tree-sitter/tree-sitter)
  - [Native LSP](https://github.com/neovim/nvim-lspconfig)
  - [Telescope](https://github.com/nvim-telescope/telescope.nvim)
  - [LSP Saga](https://github.com/glepnir/lspsaga.nvim)
  - [Trouble](https://github.com/folke/trouble.nvim)
  - [WhichKey](https://github.com/folke/which-key.nvim)
  - [Git signs](https://github.com/lewis6991/gitsigns.nvim)
  - [BarBar](https://github.com/romgrk/barbar.nvim)
  - [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
  - [Lualine](https://github.com/hoob3rt/lualine.nvim)
  - [Git Gutter](https://github.com/airblade/vim-gitgutter)
  - [Fern](https://github.com/lambdalisue/fern.vim)
  - [Lightline](https://github.com/itchyny/lightline.vim)
  - [Dashboard](https://github.com/glepnir/dashboard-nvim)
  - [Markdown](https://www.markdownguide.org/)
  - [Lightspeed](https://github.com/ggandor/lightspeed.nvim)
  - [Nvim-ts-Rainbow](https://github.com/p00f/nvim-ts-rainbow)
  - [Sneak](https://github.com/justinmk/vim-sneak)
  - [Hop](https://github.com/phaazon/hop.nvim)
  - [Neogit](https://github.com/TimUntersberger/neogit)
  - [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)

## Usage

You can use your favorite plugin manager for this. Here are some examples with the most popular ones:

#### Vim-plug

```lua
Plug 'catppuccin/nvim'
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
Plugin 'catppuccin/nvim'
```

#### NeoBundle

```lua
NeoBundleFetch 'catppuccin/nvim'
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

- `transparent_background`: (Boolean) if true, disables setting the background color.
- `term_colors`: (Boolean) if true, sets terminal colors (e.g. `g:terminal_color_0`).

#### Styles

Handles the style of general hi groups (see `:h highlight-args`):

- `comments`: (String) changed the style of the comments.
- `functions`: (String) changed the style of the functions.
- `keywords`: (String) changed the style of the keywords.
- `strings`: (String) changed the style of the strings.
- `variables`: (String) changed the style of the variables.

#### Integrations

These integrations allow catppuccin to set the theme of various plugins/stuff. To enable an integration you just need to set it to `true`, however, there are some special integrations...

If you'd like to know which highlight groups are being affected by catppuccin, checkout this directory: [`lua/catppuccin/core/integrations/`](https://github.com/catppuccin/nvim/tree/main/lua/catppuccin/core/integrations).

##### Special Integrations

- **Native Nvim LSP:** setting `enabled` to `true` enables this integration. In the inners tables you can set the style for the diagnostics, both `virtual_text` (what you see on the side) and `underlines` (what points directly at the thing (e.g. an error)).
- **Lualine:** use this to set it up (Note: `catppuccin` is the only valid theme name. It will pick the one set in your config):

```lua
require('lualine').setup {
  options = {
    theme = "catppuccin"
	-- ... the rest of your lualine config
  }
}
```

- **Lightline:** use this to set it up (Note: `catppuccin` is the only valid colorscheme name. It will pick the one set in your config):

```lua
let g:lightline = {'colorscheme': 'catppuccin'}
```

- **Kitty:** Copy and paste the file corresponding to theme you want to use from [this directory](https://github.com/catppuccin/nvim/tree/main/extra/kitty) on your Kitty config.
- **Alacritty:** Copy and paste the file corresponding to theme you want to use from [this directory](https://github.com/catppuccin/nvim/tree/main/extra/alacritty) on your Alacritty config.
- **Tmux**: Follow the instructions [here](https://github.com/catppuccin/nvim/tree/main/extra/tmux)
- **Indent-blankline.nvim**: setting `enabled` to `true` enables this integration. `colored_indent_levels` enables char highlights per indent level. Follow the instructions [here](https://github.com/lukas-reineke/indent-blankline.nvim#with-custom-gindent_blankline_char_highlight_list) to set the latter up.
- **NvimTree:** setting `enabled` to `true` enables this integration:

```lua
integration = {
  nvimtree = {
    enabled = true,
    show_root = true, -- makes the root folder not transparent
  }
}
```

## 🙋 FAQ

- Q: **_"How can I view the doc from NeoVim?"_**
  A: Use `:help catppuccin`

## 💝 Thanks to

- [Pocco81](https://github.com/Pocco81)
- [LuisxSullivaN](https://github.com/LuisxSullivaN)
