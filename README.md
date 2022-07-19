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

# About

This port of Catppuccin is special because it was the first one and the one that originated the project itself. Given this, it's important to acknowledge that it all didn't come to be what it is now out of nowhere. So, if you are interested in knowing more about the initial stages of the theme, you can find it under the [`old-catppuccino`](https://github.com/catppuccin/nvim/tree/old-catppuccino) branch.

# 🎁 Features

-   Handy CLI.
-   Extensible for many use cases.
-   [Compile](https://github.com/catppuccin/nvim#Compile) user's configuration
-   Integrations with a bunch of plugins:
    -   [Treesitter](https://github.com/tree-sitter/tree-sitter)
    -   [Native LSP](https://github.com/neovim/nvim-lspconfig)
    -   [Telescope](https://github.com/nvim-telescope/telescope.nvim)
    -   [Feline](https://github.com/feline-nvim/feline.nvim)
    -   [Lualine](https://github.com/hoob3rt/lualine.nvim)
    -   [Nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
    -   [LSP Saga](https://github.com/tami5/lspsaga.nvim)
    -   [Git signs](https://github.com/lewis6991/gitsigns.nvim)
    -   [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
    -   [Trouble](https://github.com/folke/trouble.nvim)
    -   [WhichKey](https://github.com/folke/which-key.nvim)
    -   [BarBar](https://github.com/romgrk/barbar.nvim)
    -   [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
    -   [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
    -   [Nvim-dap](https://github.com/mfussenegger/nvim-dap)
    -   [Nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
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
    -   [Telekasten](https://github.com/renerocksai/telekasten.nvim)
    -   [Notify](https://github.com/rcarriga/nvim-notify)
    -   [Symbols-Outline](https://github.com/simrat39/symbols-outline.nvim)
    -   [Mini.nvim](https://github.com/echasnovski/mini.nvim)
    -   [Aerial.nvim](https://github.com/stevearc/aerial.nvim)
    -   [Beacon.nvim](https://github.com/DanilaMihailov/beacon.nvim)
    -   [VimWiki](https://github.com/vimwiki/vimwiki)
    -   [Leap.nvim](https://github.com/ggandor/leap.nvim)

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

For `lua`:

```lua
vim.g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
require("catppuccin").setup()
vim.cmd[[colorscheme catppuccin]]
```

For `vimscript`:

```vim
let g:catppuccin_flavour = "macchiato" " latte, frappe, macchiato, mocha

lua << EOF
require("catppuccin").setup()
EOF

colorscheme catppuccin
```

You may pass a lua table to the `setup()` function in order to edit any of Catppuccin's settings:

```lua
dim_inactive = {
	enabled = false
	shade = "dark",
	percentage = 0.15,
},
transparent_background = false,
term_colors = false,
compile = {
	enabled = false,
	path = vim.fn.stdpath "cache" .. "/catppuccin",
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
	leap = false,
	telescope = true,
	nvimtree = {
		enabled = true,
		show_root = true,
		transparent_panel = false,
	},
	neotree = {
		enabled = false,
		show_root = true,
		transparent_panel = false,
	},
	dap = {
		enabled = false,
		enable_ui = false,
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
	bufferline = true,
	markdown = true,
	lightspeed = false,
	ts_rainbow = false,
	hop = false,
	notify = true,
	telekasten = true,
	symbols_outline = true,
	mini = false,
	aerial = false,
	vimwiki = true,
	beacon = true,
}
```

Remember that if you want to switch your Catppuccin flavour "on the fly" you may use the `:Catppuccin <flavour>` command.

> Note: the command has autocompletion enabled, so you can just press tab to cycle through the flavours

### Configuration

Although settings already have self-explanatory names, here is where you can find info about each one of them and their classifications!

#### General

This settings are unrelated to any group and are independent.

-   `transparent_background`: (Boolean) if true, disables setting the background color.
-   `term_colors`: (Boolean) if true, sets terminal colors (e.g. `g:terminal_color_0`).

#### Dim inactive

This setting manages the ability to dim the inactive splits/windows/buffers displayed.

-   `enabled`: (Boolean) if true, dims the background color of inactive window or buffer or split.
-   `shade`: (string) sets the shade to apply to the inactive split or window or buffer.
-   `percentage`: (number 0 < x < 1) percentage of the shade to apply to the inactive window, split or buffer.

#### Styles

Handles the style of general hi groups (see `:h highlight-args`):

-   `comments`: (Table) changed the style of the comments.
-   `functions`: (Table) changed the style of the functions.
-   `keywords`: (Table) changed the style of the keywords.
-   `strings`: (Table) changed the style of the strings.
-   `variables`: (Table) changed the style of the variables.

#### Integrations

These integrations allow catppuccin to set the theme of various plugins/stuff. To enable an integration you just need to set it to `true`, however, there are some special integrations...

If you'd like to know which highlight groups are being affected by catppuccin, checkout this directory: [`lua/catppuccin/groups/integrations/`](https://github.com/catppuccin/nvim/tree/main/lua/catppuccin/groups/integrations).

##### Special Integrations

-   **Feline.nvim**: First make sure that the [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons/) plugin is installed. Then update your Feline config to use the Catppuccin components:

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
local clrs = require("catppuccin.palettes.init").get_palette()
assets = {
	left_separator = "",
	right_separator = "",
	bar = "█",
	mode_icon = ""
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

<br />
</details>

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
		transparent_panel = false, -- make the panel transparent
	}
}
```

-   **Neo-tree:** setting `enabled` to `true` enables this integration:

```lua
integration = {
	neotree = {
		enabled = true,
		show_root = true, -- makes the root folder not transparent
		transparent_panel = false, -- make the panel transparent
	}
}
```

-   **Nvim-dap:** setting `enabled` to `true`:

```lua
integration = {
	dap = {
		enabled = true,
		enable_ui = true, -- enable nvim-dap-ui
	},
}
```

```lua
-- You need to override nvim-dap's default highlight groups, AFTER requiring nvim-dap
require("dap")

local sign = vim.fn.sign_define

sign("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = ""})
sign("DapBreakpointCondition", { text = "●", texthl = "DapBreakpointCondition", linehl = "", numhl = ""})
sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = ""})
```

### Compile

Catppuccin is a highly customizable and configurable colorscheme. This does however come at the cost of complexity and execution time.

Catppuccin can pre compute the results of your configuration and store the results in a compiled lua file. We use these precached values to set it's highlights.

#### Enable

Setting `enabled` to `true` enables this feature:

```lua
compile = {
	enabled = true,
	path = vim.fn.stdpath "cache" .. "/catppuccin",
},
```

By default catppuccin writes the compiled results into the system's cache directory.
Note: On windows we replace `/` with `\` by default

#### Compile commands

```vim
:CatppuccinCompile " Create/update the compile file
:CatppuccinClean " Delete compiled file
:CatppuccinStatus " Compile status
```

Catppuccin also provides these functions to work with the catppuccin compiler.

```lua
local catppuccin = require('catppuccin')

-- Create/update the compile files
catppuccin.compile()

-- Delete compiled files
catppuccin.clean()

-- Show compile status
catppuccin.status()
```

#### Post-install/update hooks

Packer.nvim

```lua
-- It's recommended to add `:CatppuccinCompile` to post-install/update hooks
use {
	"catppuccin/nvim",
	as = "catppuccin",
	run = ":CatppuccinCompile",
}
```

Vim-plug

```lua
-- It's recommended to add `:CatppuccinCompile` to post-update hooks
Plug 'catppuccin/nvim', {'as': 'catppuccin', 'do': 'CatppuccinCompile'}
```

#### Auto compile

Packer.nvim

```lua
-- If you want catppuccin live reload after :PackerCompile
require("packer").init {
	auto_reload_compiled = true,
}
```

```lua
-- Create an autocmd User PackerCompileDone to update it every time packer is compiled
vim.api.nvim_create_autocmd("User", {
	pattern = "PackerCompileDone",
	callback = function()
		vim.cmd "CatppuccinCompile"
		vim.defer_fn(function()
			vim.cmd "colorscheme catppuccin"
		end, 0) -- Defered for live reloading
	end,
})
```

```lua
-- PackerCompile on save if your config file is in plugins.lua or catppuccin.lua
-- DO NOT put the autocmd inside the config file or you will get 2 ^ x files open after x saves
vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = { "plugins.lua", "catppuccin.lua" },
	callback = function()
		vim.cmd "PackerCompile"
	end,
})
```

Vim-plug

```vim
" Auto compile on save if catppuccin config is written inside init.vim
autocmd BufWritePost init.vim :CatppuccinCompile
```

#### Acknowledge

[nightfox.nvim#compile](https://github.com/EdenEast/nightfox.nvim#compile)

### Extra

##### Get catppuccin colors

```lua
require("catppuccin.palettes").get_palette()
```

Will returns a table where the key is the name of the color and the value is its hex value.

#### Overwriting highlight groups

Highlight groups can be overwritten in the setting like so:

```lua
custom_highlights = {
	<hi_group> = { <fields> }
}
```

Here is an example:

```lua
local colors = require("catppuccin.palettes").get_palette() -- fetch colors from palette
custom_highlights = {
	Comment = { fg = colors.flamingo }
	TSConstBuiltin = { fg = colors.peach, style = {} },
	TSConstant = { fg = colors.sky },
	TSComment = { fg = colors.surface2, style = { "italic" } }
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

> Note: custom highlights loaded using the `require("catppuccin.lib.highlighter").syntax()` function won't be pre-compiled. See [compile](https://github.com/catppuccin/nvim/tree/main#compile).

#### Overwriting colors

Colors can be overwritten using `color_overrides` in the setting:

```lua
color_overrides = {
	frappe = {
		text = "#ffffff"
		base = "#ff0000",
		mantle = "#242424",
		crust = "#474747",
	}
},
```

#### Hooks

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
	end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		local colors = require("catppuccin.palettes").get_palette()
		-- do something with colors
	end,
})
```

## FAQ

#### Transparent background tweak?

Add this to `custom_highlights` settings

```lua
local colors = require("catppuccin.palettes").get_palette()
colors.none = "NONE"
require("catppuccin").setup {
	custom_highlights = {
		Comment = { fg = colors.overlay1 },
		LineNr = { fg = colors.overlay1 },
		CursorLine = { bg = colors.none },
		CursorLineNr = { fg = colors.lavender },
		DiagnosticVirtualTextError = { bg = colors.none },
		DiagnosticVirtualTextWarn = { bg = colors.none },
		DiagnosticVirtualTextInfo = { bg = colors.none },
		DiagnosticVirtualTextHint = { bg = colors.none },
	}
}
```

#### Use catppuccin theme for :set background=light/dark?

The following autocmd will change the flavour to latte when you `:set background=light` and to mocha after `:set background=dark`

```lua
vim.api.nvim_create_autocmd("OptionSet", {
	pattern = "background",
	callback = function()
		vim.cmd("Catppuccin " .. (vim.v.option_new == "light" and "latte" or "mocha"))
	end,
})
```

For people who are hybrid between light and dark mode!

#### Catppuccin highlight function?

This is the old remap function under the hood:

```lua
require("catppuccin.lib.highlight").syntax({
	Normal = { style = { "italic", "bold" } }
})

```

Note: Unlike the `:highlight` command which can update a highlight group, this function completely replaces the definition. (`:h nvim_set_hl`)

However, if you wish to use the old highlight api (slower):

```lua
local function syntax(tbl)
	for group, color in pairs(tbl) do
		if color.style then
			color.style = table.concat(color.style, ",")
		end
		local style = color.style and "gui=" .. color.style or "gui=NONE"
		local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
		local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
		local sp = color.sp and "guisp=" .. color.sp or ""
		local blend = color.blend and "blend=" .. color.blend or ""
		local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp .. " " .. blend
		vim.cmd(hl)
		if color.link then
			vim.cmd("highlight! link " .. group .. " " .. color.link)
		end
	end
end

syntax {
	Normal = { style = { "italic", "bold" } },
}
```

#### Abnormal colors?

You need to enable [truecolor](https://wiki.archlinux.org/title/Color_output_in_console#True_color_support)

Related: [:h termguicolors](https://neovim.io/doc/user/options.html#'termguicolors'), [catppuccin/nvim#182](https://github.com/catppuccin/nvim/issues/182),

## 💝 Thanks to

-   [Pocco81](https://github.com/Pocco81)
-   [Null Chilly](https://github.com/nullchilly)

&nbsp;

<p align="center"><img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" /></p>
<p align="center">Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
<p align="center"><a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a></p>
