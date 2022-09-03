<!-- panvimdoc-ignore-start -->

<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://github.com/neovim/neovim">NeoVim</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
    <a href="https://github.com/catppuccin/nvim/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/nvim?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
    <a href="https://github.com/catppuccin/nvim/issues"><img src="https://img.shields.io/github/issues/catppuccin/nvim?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
    <a href="https://github.com/catppuccin/nvim/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/nvim?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
  <img src="assets/demo.png"/>
</p>

<!-- panvimdoc-ignore-end -->

# About

This port of Catppuccin is special because it was the first one and the one that originated the project itself. Given this, it's important to acknowledge that it all didn't come to be what it is now out of nowhere. So, if you are interested in knowing more about the initial stages of the theme, you can find it under the [`old-catppuccino`](https://github.com/catppuccin/nvim/tree/old-catppuccino) branch.

# 🎁 Features

-   Handy CLI.
-   Extensible for many use cases.
-   [Compile](https://github.com/catppuccin/nvim#Compile) user config for faster startuptime
-   Integrations with [a bunch of plugins](https://github.com/catppuccin/nvim#integrations)

# Installation

You can use your favorite plugin manager for this. Here are some examples with the most popular ones:

#### Packer.nvim

```lua
use { "catppuccin/nvim", as = "catppuccin" }
```

#### Vim-plug

```vim
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
```

# Usage

For `lua`

```lua
vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

vim.cmd [[colorscheme catppuccin]]
```

For `vimscript`

```vim
let g:catppuccin_flavour = "macchiato" " latte, frappe, macchiato, mocha

lua << EOF
require("catppuccin").setup()
EOF

colorscheme catppuccin
```

Remember that if you want to switch your Catppuccin flavour "on the fly" you may use the `:Catppuccin <flavour>` command.

> Note: the command has autocompletion enabled, so you can just press tab to cycle through the flavours

# Configuration

You may pass a lua table to the `setup()` function in order to edit any of Catppuccin's settings:

```lua
require("catppuccin").setup({
	transparent_background = false,
	term_colors = false,
	compile = {
		enabled = false,
		path = vim.fn.stdpath("cache") .. "/catppuccin",
	},
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
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
	integrations = {
		-- For various plugins integrations see https://github.com/catppuccin/nvim#integrations
	},
	color_overrides = {},
	highlight_overrides = {},
})
```

Although settings already have self-explanatory names, here is where you can find info about each one of them and their classifications!

## General

This settings are unrelated to any group and are independent.

-   `transparent_background`: (Boolean) if true, disables setting the background color.
-   `term_colors`: (Boolean) if true, sets terminal colors (e.g. `g:terminal_color_0`).

## Dim inactive

This setting manages the ability to dim the inactive splits/windows/buffers displayed.

-   `enabled`: (Boolean) if true, dims the background color of inactive window or buffer or split.
-   `shade`: (string) sets the shade to apply to the inactive split or window or buffer.
-   `percentage`: (number 0 < x < 1) percentage of the shade to apply to the inactive window, split or buffer.

## Styles

Handles the style of general hi groups (see `:h highlight-args`):

-   `comments`: (Table) changed the style of the comments.
-   `functions`: (Table) changed the style of the functions.
-   `keywords`: (Table) changed the style of the keywords.
-   `strings`: (Table) changed the style of the strings.
-   `variables`: (Table) changed the style of the variables.

## Integrations

catppuccin-nvim provides theme support for other plugins in the Neovim ecosystem and extended Neovim functionality through _integrations_.

Below is a list of supported plugins and their corresponding integration module. (See [Special integrations](https://github.com/catppuccin/nvim#special-integrations) for more.)

| Plugin                                                                                | Module             |
| ------------------------------------------------------------------------------------- | ------------------ |
| [aerial.nvim](https://github.com/stevearc/aerial.nvim)                                | aerial             |
| [barbar.nvim](https://github.com/romgrk/barbar.nvim)                                  | barbar             |
| [beacon.nvim](https://github.com/DanilaMihailov/beacon.nvim)                          | beacon             |
| [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)                           | dashboard          |
| [fern.vim](https://github.com/lambdalisue/fern.vim)                                   | fern               |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                           | gitsigns           |
| [hop.nvim](https://github.com/phaazon/hop.nvim)                                       | hop                |
| [leap.nvim](https://github.com/ggandor/leap.nvim)                                     | leap               |
| [lightspeed.nvim](https://github.com/ggandor/lightspeed.nvim)                         | lightspeed         |
| [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim/)                              | lsp_saga           |
| [Markdown](https://www.markdownguide.org/)                                            | markdown           |
| [mini.nvim](https://github.com/echasnovski/mini.nvim)                                 | mini               |
| [neogit](https://github.com/TimUntersberger/neogit)                                   | neogit             |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                       | cmp                |
| [nvim-notify](https://github.com/rcarriga/nvim-notify)                                | notify             |
| [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)                          | nvimtree           |
| [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) | treesitter_context |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)                 | treesitter         |
| [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)                            | ts_rainbow         |
| [overseer.nvim](https://github.com/stevearc/overseer.nvim)                            | overseer           |
| [symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)              | symbols_outline    |
| [telekasten.nvim](https://github.com/renerocksai/telekasten.nvim)                     | telekasten         |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)                    | telescope          |
| [trouble.nvim](https://github.com/folke/trouble.nvim)                                 | lsp_trouble        |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter)                            | gitgutter          |
| [vim-sneak](https://github.com/justinmk/vim-sneak)                                    | vim_sneak          |
| [vimwiki](https://github.com/vimwiki/vimwiki)                                         | vimwiki            |
| [which-key.nvim](https://github.com/folke/which-key.nvim)                             | which_key          |

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
		treesitter = true,
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
		coc_nvim = false,
		lsp_trouble = false,
		cmp = true,
		lsp_saga = false,
		gitgutter = false,
		gitsigns = true,
		telescope = true,
		nvimtree = true,
		dap = {
			enabled = false,
			enable_ui = false,
		},
		neotree = {
			enabled = false,
			show_root = true,
			transparent_panel = false,
		},
		which_key = false,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = false,
		},
		dashboard = true,
		neogit = false,
		vim_sneak = false,
		fern = false,
		barbar = false,
		markdown = true,
		lightspeed = false,
		leap = false,
		ts_rainbow = false,
		hop = false,
		notify = true,
		telekasten = false,
		symbols_outline = false,
		mini = false,
		aerial = false,
		vimwiki = false,
		beacon = false,
		navic = {
			enabled = false,
			custom_bg = "NONE",
		},
		overseer = false,
		fidget = false,
		treesitter_context = false,
	},
})
```

</details>

### Special integrations

<details> <summary>bufferline.nvim</summary>

Update your bufferline config to use the Catppuccin components:

```lua
bufferline.setup { highlights = require("catppuccin.groups.integrations.bufferline").get() }
```

Configurations are self-explanatory, see `:h bufferline-highlights` for detailed explanation:

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

<details> <summary>feline.nvim</summary>

First make sure that the [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons/) plugin is installed. Then update your Feline config to use the Catppuccin components:

```lua
local ctp_feline = require('catppuccin.groups.integrations.feline')

ctp_feline.setup()

require("feline").setup({
	components = ctp_feline.get(),
})
```

Notice that calling `setup()` is optional. You may pass a lua table in order to change assets, settings and the colors per vim mode.

<details>
    <summary>Here are the defaults</summary>
<p>

```lua
local clrs = require("catppuccin.palettes").get_palette()
assets = {
	left_separator = "",
	right_separator = "",
	bar = "█",
	mode_icon = "",
	dir = "  ",
	file = "   ",
	lsp = {
		server = "  ",
		error = "  ",
		warning = "  ",
		info = "  ",
		hint = "  ",
	},
	git = {
		branch = "  ",
		added = "  ",
		changed = "  ",
		removed = "  ",
	},
},
sett = {
	text = ucolors.vary_color({ latte = latte.base }, clrs.surface0),
	bkg = ucolors.vary_color({ latte = latte.crust }, clrs.surface0),
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
```

</p>
</details>
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

Use this to set it up (Note: `catppuccin` is the only valid colorscheme name. It will pick the one set in your config):

```vim
let g:lightline = {'colorscheme': 'catppuccin'}
```

</details>

<details> <summary>lualine.nvim</summary>

Use this to set it up (Note: `catppuccin` is the only valid theme name. It will pick the one set in your config):

```lua
require('lualine').setup {
	options = {
		theme = "catppuccin"
		-- ... the rest of your lualine config
	}
}
```

</details>

<details> <summary>neo-tree.nvim</summary>

Setting `enabled` to `true` enables this integration:

```lua
integration = {
	neotree = {
		enabled = true,
		show_root = true, -- makes the root folder not transparent
		transparent_panel = false, -- make the panel transparent
	}
}
```

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

<details> <summary>vim-clap</summary>

Use this to set it up:

```vim
let g:clap_theme = 'catppuccin'
```

</details>

If you'd like to know which highlight groups are being affected by catppuccin, check out this directory: [`lua/catppuccin/groups/integrations/`](https://github.com/catppuccin/nvim/tree/main/lua/catppuccin/groups/integrations).

# Customize highlights

## Get catppuccin colors

```lua
local latte = require("catppuccin.palettes").get_palette "latte"
local frappe = require("catppuccin.palettes").get_palette "frappe"
local macchiato = require("catppuccin.palettes").get_palette "macchiato"
local
```
