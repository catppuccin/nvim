<!-- panvimdoc-ignore-start -->

<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://github.com/neovim/neovim">Neovim</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
    <a href="https://github.com/catppuccin/nvim/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/nvim?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
    <a href="https://github.com/catppuccin/nvim/issues"><img src="https://img.shields.io/github/issues/catppuccin/nvim?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
    <a href="https://github.com/catppuccin/nvim/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/nvim?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
This port of Catppuccin is special because it was the first one and the one that originated the project itself. Given this, it's important to acknowledge that it all didn't come to be what it is now out of nowhere. So, if you are interested in knowing more about the initial stages of the theme, you can find it under the 
<a href="https://github.com/catppuccin/nvim/tree/v0.1">v0.1</a> tag
</p>

<p align="center">
  <img src="https://user-images.githubusercontent.com/56817415/193125027-e03e0325-acb5-42a7-ba4a-04ad5516b121.png"/>
</p>

# Previews

<details>
<summary>Mocha</summary>
<img src="https://user-images.githubusercontent.com/56817415/193097127-21377990-ffb9-4e81-9adc-feb688e9104e.png"/>
</details>
<details>
<summary>Macchiato</summary>
<img src="https://user-images.githubusercontent.com/56817415/193099598-a5482fa9-bc22-42e8-ad61-ad73303f781f.png"/>
</details>
<details>
<summary>Frappe</summary>
<img src="https://user-images.githubusercontent.com/56817415/193099978-661ade74-49ef-4003-b3c8-9c74c475572c.png"/>
</details>
<details>
<summary>Latte</summary>
<img src="https://user-images.githubusercontent.com/56817415/193100918-17460481-ed80-4f75-bec9-efb3de2cb2ee.png"/>
</details>

**[You can bake your own flavour!](https://github.com/catppuccin/nvim/#overwriting-colors) Here are some from our community:**
<details>
<summary>nullchilly/amoled</summary>
<img src="https://user-images.githubusercontent.com/56817415/197340978-c4052b14-df5b-427a-9b81-7a93f65efa4e.png"/>


Configuration:
```lua
require("catppuccin").setup {
	flavour = "mocha",
	color_overrides = {
		mocha = {
			base = "#000000",
		}
	},
	integrations = {
		nvimtree = true,
	},
	custom_highlights = {
		NvimTreeNormal = { bg = "NONE" },
	}
}
```
</details>

<details>
<summary><a href="https://github.com/ayamir/nvimdots/">ayamir/nvimdots</a></summary>
<img src="https://raw.githubusercontent.com/ayamir/blog-imgs/main/telescope.png"/>

Configuration: https://github.com/ayamir/nvimdots/blob/main/lua/modules/ui/config.lua
</details>

</details>

<!-- panvimdoc-ignore-end -->

# Features

-   Handy CLI.
-   Extensible for many use cases.
-   [Compile](https://github.com/catppuccin/nvim#Compile) user config for faster startuptime
-   Integrations with [a bunch of plugins](https://github.com/catppuccin/nvim#integrations)

# Installation

You can use your favorite plugin manager for this. Here are some examples with the most popular ones:

#### Packer.nvim

```lua
use {
	"catppuccin/nvim",
	as = "catppuccin",
	config = function()
		require("catppuccin").setup {
			flavour = "macchiato" -- mocha, macchiato, frappe, latte
		}
		vim.api.nvim_command "colorscheme catppuccin"
	end
}
```

#### Vim-plug

```vim
call plug#begin()
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
call plug#end()

lua << EOF
require("catppuccin").setup {
	flavour = "macchiato" -- mocha, macchiato, frappe, latte
}
EOF
colorscheme catppuccin
```

If you want to switch your Catppuccin flavour "on the fly" you may use this command:

```lua
:Catppuccin mocha/macchiato/frappe/latte
```

> Note: the command has autocompletion enabled, so you can just press tab to cycle through the flavours

```vim
" There are also colorschemes for the different flavour
colorscheme catppuccin-mocha
colorscheme catppuccin-macchiato
colorscheme catppuccin-frappe
colorscheme catppuccin-latte
```

# Configuration

You may pass a lua table to the `setup()` function in order to edit any of Catppuccin's settings:

```lua
require("catppuccin").setup({
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	background = { -- :h background
		light = "latte",
		dark = "mocha",
	},
	compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
	transparent_background = false,
	term_colors = false,
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
	color_overrides = {},
	integrations = {
		cmp = true,
		gitsigns = true,
		nvimtree = true,
		telescope = true,
		treesitter = true,
		-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
	},
	custom_highlights = {},
})
```

Although settings already have self-explanatory names, here is where you can find info about each one of them and their classifications!

## General

This settings are unrelated to any group and are independent.

-   `background`: (Table) Match :set background=light/dark with :Catppuccin background.light/dark
-   `term_colors`: (Boolean) if true, sets terminal colors (e.g. `g:terminal_color_0`).
-   `transparent_background`: (Boolean) if true, disables setting the background color.

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

## Integrations

catppuccin-nvim provides theme support for other plugins in the Neovim ecosystem and extended Neovim functionality through _integrations_.

Below is a list of supported plugins and their corresponding integration module. (See [Special integrations](https://github.com/catppuccin/nvim#special-integrations) for more.)

| Plugin                                                                                | Module             |
| ------------------------------------------------------------------------------------- | ------------------ |
| [aerial.nvim](https://github.com/stevearc/aerial.nvim)                                | aerial             |
| [barbar.nvim](https://github.com/romgrk/barbar.nvim)                                  | barbar             |
| [beacon.nvim](https://github.com/DanilaMihailov/beacon.nvim)                          | beacon             |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)                         | Special            |
| [dashboard-nvim](https://github.com/glepnir/dashboard-nvim)                           | dashboard          |
| [feline.nvim](https://github.com/feline-nvim/feline.nvim/)                            | Special            |
| [fern.vim](https://github.com/lambdalisue/fern.vim)                                   | fern               |
| [fidget.nvim](https://github.com/j-hui/fidget.nvim)                                   | Special            |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                           | gitsigns           |
| [harpoon](https://github.com/ThePrimeagen/harpoon)                                    | harpoon            |
| [hop.nvim](https://github.com/phaazon/hop.nvim)                                       | hop                |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)       | Special            |
| [leap.nvim](https://github.com/ggandor/leap.nvim)                                     | leap               |
| [lightline.vim](https://github.com/itchyny/lightline.vim)                             | Special            |
| [lightspeed.nvim](https://github.com/ggandor/lightspeed.nvim)                         | lightspeed         |
| [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim/)                              | lsp_saga           |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)                          | Special            |
| [markdown](https://www.markdownguide.org/)                                            | markdown           |
| [mason](https://github.com/williamboman/mason.nvim)                                   | mason              |
| [mini.nvim](https://github.com/echasnovski/mini.nvim)                                 | mini               |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)                       | neotree            |
| [neogit](https://github.com/TimUntersberger/neogit)                                   | neogit             |
| [neotest](https://github.com/nvim-neotest/neotest)                                    | neotest            |
| [noice.nvim](https://github.com/folke/noice.nvim)                                     | noice              |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)                                       | cmp                |
| [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)                                | Special            |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap)                                  | Special            |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)                            | Special            |
| [nvim-navic](https://github.com/SmiteshP/nvim-navic/)                                 | Special            |
| [nvim-notify](https://github.com/rcarriga/nvim-notify)                                | notify             |
| [nvim-semantic-tokens](https://github.com/theHamsta/nvim-semantic-tokens)             | semantic_tokens    |
| [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)                          | nvimtree           |
| [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) | treesitter_context |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)                 | treesitter         |
| [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)                            | ts_rainbow         |
| [overseer.nvim](https://github.com/stevearc/overseer.nvim)                            | overseer           |
| [pounce.nvim](https://github.com/rlane/pounce.nvim)                                   | pounce             |
| [symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim)              | symbols_outline    |
| [telekasten.nvim](https://github.com/renerocksai/telekasten.nvim)                     | telekasten         |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)                    | telescope          |
| [trouble.nvim](https://github.com/folke/trouble.nvim)                                 | lsp_trouble        |
| [vim-clap](https://github.com/liuchengxu/vim-clap)                                    | Special            |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter)                            | gitgutter          |
| [vim-illuminate](https://github.com/RRethy/vim-illuminate)                            | illuminate         |
| [vim-sneak](https://github.com/justinmk/vim-sneak)                                    | vim_sneak          |
| [vimwiki](https://github.com/vimwiki/vimwiki)                                         | vimwiki            |
| [which-key.nvim](https://github.com/folke/which-key.nvim)                             | which_key          |

> "Special" module means Special integrations, see https://github.com/catppuccin/nvim#special-integrations for more details

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
		overseer = false,
		pounce = false,
		semantic_tokens = false,
		symbols_outline = false,
		telekasten = false,
		telescope = true,
		treesitter = true,
		treesitter_context = false,
		ts_rainbow = false,
		vim_sneak = false,
		vimwiki = false,
		which_key = false,

		-- Special integrations, see https://github.com/catppuccin/nvim#special-integrations
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

### Special integrations

<details> <summary>bufferline.nvim</summary>

Update your bufferline config to use the Catppuccin components:

```lua
bufferline.setup { highlights = require("catppuccin.groups.integrations.bufferline").get() }
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

Here are the defaults:

```lua
local clrs = require("catppuccin.palettes").get_palette()
local ctp_feline = require('catppuccin.groups.integrations.feline')

ctp_feline.setup({
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
})
```

Note: Currently feline [doesn't officially support custom themes](https://github.com/feline-nvim/feline.nvim/issues/302). In order for `:Catppuccin <flavour>` to work you could add this autocmd as a workaround:
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
local mocha = require("catppuccin.palettes").get_palette "mocha"

vim.g.catppuccin_flavour = "macchiato" -- Has to be set in order for empty argument to work
local colors = require("catppuccin.palettes").get_palette() -- g:catppuccin_flavour's palette
```

Will returns a table where the key is the name of the color and the value is its hex value.

## Overwriting highlight groups

Global highlight groups can be overwritten in the setting like so:

```lua
custom_highlights = {
	<hi_group> = { <fields> }
}
```

Here is an example:

```lua
vim.g.catppuccin_flavour = "macchiato"
local colors = require("catppuccin.palettes").get_palette() -- fetch colors from g:catppuccin_flavour palette
require("catppuccin").setup {
	custom_highlights = {
		Comment = { fg = colors.flamingo },
		TSConstBuiltin = { fg = colors.peach, style = {} },
		TSConstant = { fg = colors.sky },
		TSComment = { fg = colors.surface2, style = { "italic" } }
	}
}
```

Per flavour highlight groups can be overwritten in the setting like so:

```lua
highlight_overrides = {
	all = { -- Will be replaced with custom_highlights if it exists
		<hi_group> = { <fields> }
	}, -- Same for each flavour
	latte = {},
	frappe = {},
	macchiato = {},
	mocha = {},
}
```

Here is an example:

```lua
local ucolors = require "catppuccin.utils.colors"
local latte = require("catppuccin.palettes").get_palette "latte"
local frappe = require("catppuccin.palettes").get_palette "frappe"
local macchiato = require("catppuccin.palettes").get_palette "macchiato"
local mocha = require("catppuccin.palettes").get_palette "mocha"

vim.g.catppuccin_flavour = "macchiato"
local colors = require("catppuccin.palettes").get_palette() -- return vim.g.catppuccin_flavour palette

require("catppuccin").setup {
	highlight_overrides = {
		all = {
			CmpBorder = { fg = "#3e4145" },
		},
		latte = {
			Normal = { fg = ucolors.darken(latte.base, 0.7, latte.mantle) },
		},
		frappe = {
			TSConstBuiltin = { fg = frappe.peach, style = {} },
			TSConstant = { fg = frappe.sky },
			TSComment = { fg = frappe.surface2, style = { "italic" } },
		},
		macchiato = {
			LineNr = { fg = macchiato.overlay1 }
		},
		mocha = {
			Comment = { fg = mocha.flamingo },
		},
	},
}
```

Aditionally, if you want to load other custom highlights later, you may use this function:

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

# Compile

Catppuccin is a highly customizable and configurable colorscheme. This does however come at the cost of complexity and execution time.

Catppuccin can pre compute the results of your configuration and store the results in a compiled lua file. We use these precached values to set it's highlights.

## Config

By default catppuccin writes the compiled results into the system's cache directory. You can change cache dir using:

```lua
require("catppuccin").setup({
	compile_path = vim.fn.stdpath "cache" .. "/catppuccin"
})
```

Note: On windows we replace `/` with `\` by default

## Compile commands

```vim
:CatppuccinCompile " Create/update the compile file
```

Catppuccin also provide a function to work with the catppuccin compiler.

```lua
-- Create/update the compile files
require('catppuccin').compile()
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

## Catppuccin remap function

Unlike the `:highlight` command which can update a highlight group, this function completely replaces the definition. (`:h nvim_set_hl`)

```lua
require("catppuccin.lib.highlighter").syntax({
	Normal = { style = { "italic", "bold" } }
})
```

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

Full list of support terminals can be found here: https://github.com/termstandard/colors#truecolor-support-in-output-devices

- Unsupported terminal: Terminal.app (macOS), Terminus, Terminology, ...

Full list of Unsupported terminals can be found here: https://github.com/termstandard/colors#not-supporting-truecolor

# Thanks to

-   [Pocco81](https://github.com/Pocco81)
-   [Null Chilly](https://github.com/nullchilly)

<!-- panvimdoc-ignore-start -->

&nbsp;

<p align="center"><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" /></p>
<p align="center">Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
<p align="center"><a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a></p>

<!-- panvimdoc-ignore-end -->
